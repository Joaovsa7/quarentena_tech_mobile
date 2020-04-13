import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/models/thing.dart';
import 'package:quarentena_tech_mobile/src/pages/widgets/project_goal.dart';
import 'package:quarentena_tech_mobile/src/services/api.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _api = Api();
  String _status = 'idle';
  List<Thing> _things = [];

  @override
  void initState() {
    super.initState();
    _getItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeae6da),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/img/jedi.png'),
        title: Text('#Quarentena.Tech'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ProjectGoal(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _getItems() async {
    try {
      setState(() => _status = 'pending');
      final response = await _api.getThings();

      setState(() {
        _status = 'resolved';
        _things = response;
      });
    } catch (e) {
      setState(() {
        _status = 'rejected';
      });
      // TODO: Improve error handling
      print(e);
    }
  }
}
