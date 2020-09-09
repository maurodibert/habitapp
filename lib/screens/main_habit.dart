import 'package:flutter/material.dart';
import 'package:habitapp/models/main_habit_model.dart';

class MainHabitScreen extends StatelessWidget {
  final MainHabit mainHabit;
  MainHabitScreen({@required this.mainHabit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                  height: 200,
                  child: Hero(
                      tag: 'fromHomeToMainHabitScreen',
                      child: Image.asset(mainHabit.image))),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(mainHabit.name,
                      style: Theme.of(context).textTheme.headline4),
                  Text(mainHabit.minimumTime.toString(),
                      style: Theme.of(context).textTheme.headline6)
                ],
              ),
              Text(mainHabit.description,
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          )),
    );
  }
}
