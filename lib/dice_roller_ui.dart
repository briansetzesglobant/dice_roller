import 'package:flutter/material.dart';
import 'utils/constants.dart';
import 'utils/text_styles.dart';

class DiceRollerUI extends StatefulWidget {
  DiceRollerUI({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  _DiceRollerUIState createState() => _DiceRollerUIState();
}

class _DiceRollerUIState extends State<DiceRollerUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      backgroundColor: Color.fromARGB(
        Constants.backgroundColorRed,
        Constants.backgroundColorGreen,
        Constants.backgroundColorBlue,
        Constants.backgroundColorOpacity,
      ),
      body: GridView.count(
        crossAxisCount: Constants.bodyCrossAxisCount,
        padding: EdgeInsets.all(
          Constants.bodyPadding,
        ),
        mainAxisSpacing: Constants.bodyMainAxisSpacing,
        crossAxisSpacing: Constants.bodyCrossAxisSpacing,
        children: List.generate(
          Constants.bodyChildren,
          (int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Constants.bodyBorderRadius,
                ),
              ),
              child: Image(
                image: AssetImage(
                  'assets/images/dice${index + 1}.jpg',
                ),
                fit: BoxFit.fill,
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Press a dice to roll!',
            style: TextStyles.bottomNavigationBarText,
          ),
          SizedBox(
            width: Constants.bottomNavigationBarChildren,
          ),
          Text(
            'Score: ',
            style: TextStyles.bottomNavigationBarScore,
          ),
          Text(
            '21',
            style: TextStyles.bottomNavigationBarValue,
          ),
        ],
      ),
    );
  }
}
