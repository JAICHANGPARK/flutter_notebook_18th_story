import 'package:flutter/material.dart';

class MeetingCreatePage extends StatefulWidget {
  const MeetingCreatePage({Key? key}) : super(key: key);

  @override
  State<MeetingCreatePage> createState() => _MeetingCreatePageState();
}

class _MeetingCreatePageState extends State<MeetingCreatePage> {
  List<String> _tagItems = [
    "UI/UX",
    "design",
    "presentation",
    "work",
    "figma",
    "web",
    "demo",
  ];

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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children:_tagItems.map((e) => Container(
                        decoration: const BoxDecoration(color: Color(0xff668DeD)),
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Text(
                          "$e",
                          style: TextStyle(
                            color: Colors.white,
                            
                          ),
                        ),
                      ),).toList()

                  )
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
