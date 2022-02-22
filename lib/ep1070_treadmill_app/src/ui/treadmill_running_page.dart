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
                  children: [
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
            Expanded(flex: 5, child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Column(
                        children: [
                          Text("6.13",style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 8,),
                          Text("Distance", style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12
                          ),)
                        ],
                      )),
                      Expanded(child: Column(
                        children: [
                          Text("381.2",style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 8,),
                          Text("Calories", style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                          ),)
                        ],
                      )),
                      Expanded(child: Column(
                        children: [
                          Text("8838",style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 8,),
                          Text("Steps", style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                          ),)
                        ],
                      )),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Column()),
                      Expanded(child: Column()),
                      Expanded(child: Column()),
                    ],
                  ),
                )
              ],
            )),
            Expanded(flex: 3, child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
