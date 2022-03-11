import 'package:flutter/material.dart';

class MeetingCreatePage extends StatefulWidget {
  const MeetingCreatePage({Key? key}) : super(key: key);

  @override
  State<MeetingCreatePage> createState() => _MeetingCreatePageState();
}

class _MeetingCreatePageState extends State<MeetingCreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Create",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    "New Meeting",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        // label: Text("Title"),
                        labelText: "Title",
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        )),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      // label: Text("Title"),
                      labelText: "Tags",
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 84,
                  width: double.infinity,
                  child: Wrap(
                    children: [
                      Container(
                        child: Center(
                          child: Text(
                            "UI/UX",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Participants"),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return const Padding(
                              padding: EdgeInsets.only(right: 12),
                              child: CircleAvatar(
                                radius: 32,
                                backgroundColor: Color(0x55668DED),
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xff4071e9),
                                  size: 32,
                                ),
                              ),
                            );
                          }
                          return const Padding(
                            padding: EdgeInsets.only(right: 12),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: NetworkImage("https://thispersondoesnotexist.com/image"),
                            ),
                          );
                        },
                      ),
                    )
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
