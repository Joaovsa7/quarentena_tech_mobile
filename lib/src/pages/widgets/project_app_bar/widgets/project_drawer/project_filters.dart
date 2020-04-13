import 'package:flutter/material.dart';
import 'package:quarentena_tech_mobile/src/utils/constants.dart';
import 'package:quarentena_tech_mobile/src/utils/helpers.dart';
import 'package:quarentena_tech_mobile/src/widgets/nes_button.dart';

class ProjectFilters extends StatelessWidget {
  const ProjectFilters({
    Key key,
    @required this.activeFilters,
    @required this.onChangedFilter,
  }) : super(key: key);

  final List<String> activeFilters;
  final ValueChanged<String> onChangedFilter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text('Categorias'),
          SizedBox(height: 20),
          ...AppCategories.map(_buildCategory).toList(),
        ],
      ),
    );
  }

  Widget _buildCategory(String category) {
    final isSelected = activeFilters.contains(category);
    final image = isSelected ? 'full' : 'empty';

    return Container(
      height: 80,
      margin: EdgeInsets.all(5),
      child: NESButton(
        backgroundColor: getColorByCategory(category),
        shadowColor: getDarkerColorByCategory(category),
        child: FlatButton(
          onPressed: () => onChangedFilter(category),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                'assets/img/$image-star.png',
                height: 30,
              ),
              SizedBox(height: 10),
              Text(
                category,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
