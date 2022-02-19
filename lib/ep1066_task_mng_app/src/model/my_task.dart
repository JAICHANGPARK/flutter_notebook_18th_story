import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTag {
  Color? color;
  String? tag;

  TaskTag(this.color, this.tag);
}

class MyTask {
  List<TaskTag>? tags;
  String? title;
  String? subtitle;
  String? timeLeft;

  MyTask({this.tags, this.title, this.subtitle, this.timeLeft});
}

List<MyTask> backlogTaskItems = [
  MyTask(
      tags: [
        TaskTag(Colors.red, "Urgent"),
        TaskTag(Colors.black54, "2 Sub Task"),
      ],
      title: "Design Wireframe",
      subtitle: "Making Wireframe to define and plan the information hierarchy ...",
      timeLeft: "5 day"),
  MyTask(
      tags: [
        TaskTag(Colors.red, "Urgent"),
        TaskTag(Colors.black54, "2 Sub Task"),
      ],
      title: "Design Wireframe",
      subtitle: "Making Wireframe to define and plan the information hierarchy ...",
      timeLeft: "5 day"),
  MyTask(
      tags: [
        TaskTag(Colors.red, "Urgent"),
        TaskTag(Colors.black54, "2 Sub Task"),
      ],
      title: "Design Wireframe",
      subtitle: "Making Wireframe to define and plan the information hierarchy ...",
      timeLeft: "5 day")
];
