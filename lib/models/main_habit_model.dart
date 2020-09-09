import 'package:flutter/material.dart';

class MainHabit {
  final String name;
  final String description;
  final int minimumTime;
  final Icon icon;
  final String image;

  MainHabit(
      {@required this.name,
      @required this.description,
      @required this.image,
      this.minimumTime,
      this.icon});
}
