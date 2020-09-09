import 'package:habitapp/components/main_habit_tail.dart';
import 'package:habitapp/models/main_habit_model.dart';
import 'package:flutter/material.dart';

List<MainHabit> fetchMainHabits() {
  return _mainHabitsList;
}

List<MainHabit> _mainHabitsList = [
  MainHabit(
      name: 'Tomar sol',
      description:
          'Sin vidrios de por medio y dejando que le pegue a la mayor cantidad de piel desnuda posible',
      minimumTime: 20,
      image: 'assets/images/sun.png'),
];
