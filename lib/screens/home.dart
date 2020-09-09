import 'package:flutter/material.dart';
import 'package:habitapp/components/main_habit_tail.dart';
import 'package:habitapp/models/main_habit_model.dart';
import 'package:habitapp/services/habits.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MainHabit> list;

  @override
  void initState() {
    super.initState();
    setState(() {
      list = fetchMainHabits();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, index) {
                return Hero(
                    tag: 'fromHomeToMainHabitScreen',
                    child: MainHabitTail(mainHabit: list[index]));
              })),
    );
    // return Scaffold(
    //   body: ListView.separated(
    //       separatorBuilder: (context, index) => Divider(),
    //       itemCount: list.length,
    //       itemBuilder: (BuildContext context, int index) {
    //         return MainHabitTail(list[index]);
    //         // return MainHabit(icon: list[index].icon, name: list[index].name);
    //       }),
    // );
  }
}
