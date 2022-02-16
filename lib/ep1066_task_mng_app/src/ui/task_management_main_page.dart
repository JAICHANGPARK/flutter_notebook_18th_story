import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskManagementMainPage extends StatefulWidget {
  const TaskManagementMainPage({Key? key}) : super(key: key);

  @override
  _TaskManagementMainPageState createState() => _TaskManagementMainPageState();
}

class _TaskManagementMainPageState extends State<TaskManagementMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Dreamwalker"),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Hello, Dreamwalker 👋",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(6),
                    child: const Icon(Icons.menu),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Project",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 8),
                    child: Container(
                      height: 300,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "My Task",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("See all"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
