import 'package:flutter/material.dart';

import 'src/ui/task_management_main_page.dart';


class TaskManagementApp extends StatelessWidget {
  const TaskManagementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskManagementMainPage(),
    );
  }
}
