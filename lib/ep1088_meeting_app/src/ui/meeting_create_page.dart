import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeetingCreatePage extends StatefulWidget {
  const MeetingCreatePage({Key? key}) : super(key: key);

  @override
  State<MeetingCreatePage> createState() => _MeetingCreatePageState();
}

class _MeetingCreatePageState extends State<MeetingCreatePage> {
  final List<String> _tagItems = [
    "UI/UX",
    "design",
    "presentation",
    "work",
    "figma",
    "web",
    "demo",
  ];
  final TextEditingController _textEditingController = TextEditingController(text: "Design Demo Meeting");
  final TextEditingController _textEditingController2 = TextEditingController(text: "demo");
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
                children:  [
                  const Text(
                    "Create",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  const Text(
                    "New Meeting",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  TextField(
                    controller: _textEditingController,
                    decoration: const InputDecoration(
                        // label: Text("Title"),
                        labelText: "Title",
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        )),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                   TextField(
                    controller: _textEditingController2,
                    decoration: InputDecoration(
                      // label: Text("Title"),
                      labelText: "Tags",
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: _tagItems
                          .map(
                            (e) => Container(
                              decoration:
                                  BoxDecoration(color: const Color(0xff668DeD), borderRadius: BorderRadius.circular(4)),
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              child: Text(
                                "$e",
                                style: const TextStyle(color: Colors.white, fontSize: 12),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const Text("Date & Time"),
                    Row(
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                          ),
                        ),
                        Column(
                          children: [
                            const Text("Date"),
                            const Text("Friday 26, Feb"),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
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
