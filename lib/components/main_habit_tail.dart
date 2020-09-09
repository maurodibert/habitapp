import 'package:flutter/material.dart';
import 'package:habitapp/models/main_habit_model.dart';
import 'package:habitapp/screens/main_habit.dart';

class MainHabitTail extends StatefulWidget {
  final MainHabit mainHabit;
  MainHabitTail({Key key, @required this.mainHabit}) : super(key: key);

  @override
  _MainHabitTailState createState() => _MainHabitTailState();
}

class _MainHabitTailState extends State<MainHabitTail> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MainHabitScreen(
            mainHabit: widget.mainHabit,
          );
        }));
      },
      child: Container(
          padding: EdgeInsets.all(10),
          height: 80,
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.black26, width: 1))),
          child: Image.asset(widget.mainHabit.image)),
    );
  }
}
