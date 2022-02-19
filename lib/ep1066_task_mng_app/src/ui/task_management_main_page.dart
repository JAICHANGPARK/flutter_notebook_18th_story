import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1066_task_mng_app/src/model/my_task.dart';
import 'package:flutter_notebook_18th_story/ep1066_task_mng_app/src/riverpod/task_tap_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../model/task_tab.dart';

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
                      child: SizedBox(
                        height: 270,
                        // decoration: const BoxDecoration(
                        //   color: Colors.green,
                        // ),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: SizedBox(
                                width: 180,
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius: BorderRadius.circular(8),
                                              image: const DecorationImage(
                                                image: CachedNetworkImageProvider(
                                                  "https://cdn.pixabay.com/photo/2021/12/15/12/21/leaves-6872404_960_720.jpg",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          "NFT Landing Page 💰",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              "4",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Text(
                                              "/12 task",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              "30%",
                                              style: TextStyle(
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        LinearPercentIndicator(
                                          // width: 160,
                                          // fillColor: Colors.blueAccent,
                                          // linearStrokeCap: LinearStrokeCap.roundAll,
                                          lineHeight: 8,
                                          barRadius: const Radius.circular(8),
                                          padding: EdgeInsets.zero,
                                          percent: 0.3,
                                          backgroundColor: Colors.grey[300],
                                          progressColor: Colors.blueAccent,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: 10,
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Consumer(
                        builder: (BuildContext context, WidgetRef ref, Widget? child) {
                          final idx = ref.watch(taskTabProvider);
                          return Container(
                            height: 48,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    right: 8,
                                    top: 4,
                                    bottom: 4,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      ref.read(taskTabProvider.notifier).state = index;
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                      ),
                                      decoration: BoxDecoration(
                                        color: idx == index ? Colors.blueAccent : Colors.blueGrey[50],
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Center(
                                        child: Text(
                                          taskTabItems[index].title,
                                          style: TextStyle(
                                            color: idx == index ? Colors.white : Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              itemCount: taskTabItems.length,
                              scrollDirection: Axis.horizontal,
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: backlogTaskItems.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          var item = backlogTaskItems[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: SizedBox(
                              height: 200,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Row(
                                          children: item.tags
                                                  ?.map((e) => Padding(
                                                    padding: const EdgeInsets.only(right: 8),
                                                    child: Container(
                                                          padding: EdgeInsets.symmetric(
                                                            horizontal: 12,
                                                            vertical: 6,
                                                          ),
                                                          decoration: BoxDecoration(
                                                            color: e.color ?? Colors.black,
                                                            borderRadius: BorderRadius.circular(4),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              "${e.tag}",
                                                              style: const TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 12
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                  ))
                                                  .toList() ??
                                              [])
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
