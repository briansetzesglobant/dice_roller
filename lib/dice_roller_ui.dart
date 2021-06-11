import 'package:flutter/material.dart';
import 'utils/constants.dart';
import 'utils/text_styles.dart';
import 'src/bloc/i_dice_bloc.dart';

class DiceRollerUI extends StatefulWidget {
  final String title;

  final IDiceBloc bloc;

  DiceRollerUI({
    Key key,
    this.title,
    this.bloc,
  }) : super(key: key);

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
      body: StreamBuilder(
        initialData: Constants.bodyList,
        stream: widget.bloc.numbersStream,
        builder: (context, snapshot) {
          return GridView.count(
            crossAxisCount: Constants.bodyCrossAxisCount,
            padding: EdgeInsets.all(
              Constants.bodyPadding,
            ),
            mainAxisSpacing: Constants.bodyMainAxisSpacing,
            crossAxisSpacing: Constants.bodyCrossAxisSpacing,
            children: snapshot.data.map<Widget>(
              (index) {
                return InkWell(
                  onTap: () {
                    widget.bloc.diceRoll();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        Constants.bodyBorderRadius,
                      ),
                    ),
                    child: Image(
                      image: AssetImage(
                        'assets/images/dice$index.jpg',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            ).toList(),
          );
        },
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
          StreamBuilder(
            initialData: Constants.body,
            stream: widget.bloc.scoreStream,
            builder: (context, snapshot) {
              return Text(
                snapshot.data,
                style: TextStyles.bottomNavigationBarValue,
              );
            },
          ),
        ],
      ),
    );
  }
}
