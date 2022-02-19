import 'dart:ui';

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

  MyTask(this.tags, this.title, this.subtitle, this.timeLeft);
}


List<MyTask> backlogTaskItems = [
  
];