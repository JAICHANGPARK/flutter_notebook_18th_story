import 'package:flutter/material.dart';

class TreadmillRunningPage extends StatefulWidget {
  const TreadmillRunningPage({Key? key}) : super(key: key);

  @override
  _TreadmillRunningPageState createState() => _TreadmillRunningPageState();
}

class _TreadmillRunningPageState extends State<TreadmillRunningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "56:12",
                      style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Time",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                )),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: const [
                                Text(
                                  "6.13",
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Distance",
                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                )
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: const [
                                Text(
                                  "381.2",
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Calories",
                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                )
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: const [
                                Text(
                                  "8838",
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Steps",
                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                )
                              ],
                            )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: const [
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Speed",
                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                )
                              ],
                            )),
                            Expanded(
                              child: Column(
                                children: const [
                                  Text(
                                    "8`13",
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Avg pace",
                                    style: TextStyle(color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: const [
                                  Text(
                                    "110",
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Cadence",
                                    style: TextStyle(color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.black,
                          child: const Icon(Icons.speed),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "SPEED",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          child: const Text("STOP"),
                          radius: 38,
                        ),
                        SizedBox(height: 16,),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.black,
                          child: const Icon(Icons.speed),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "SPEED",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
