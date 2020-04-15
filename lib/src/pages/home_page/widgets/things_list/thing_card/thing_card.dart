import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/models/thing.dart';
import 'package:quarentena_tech_mobile/src/pages/home_page/widgets/things_list/thing_card/thing_card_footer.dart';
import 'package:quarentena_tech_mobile/src/pages/home_page/widgets/things_list/thing_card/thing_card_header.dart';
import 'package:quarentena_tech_mobile/src/widgets/nes_card.dart';

class ThingCard extends StatelessWidget {
  const ThingCard({
    Key key,
    @required this.thing,
  }) : super(key: key);

  final Thing thing;

  @override
  Widget build(BuildContext context) {
    return NESCard(
      margin: EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ThingCardHeader(
              thing: thing,
            ),
            SizedBox(height: 20),
            Text(
              thing.content,
              style: TextStyle(
                height: 1.2,
              ),
            ),
            SizedBox(height: 40),
            ThingCardFooter(
              thing: thing,
            ),
          ],
        ),
      ),
    );
  }
}
