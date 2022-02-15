import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1063_tutor_app/src/ui/tutor_card_component.dart';
import 'package:ionicons/ionicons.dart';

class TutorMainPage extends StatefulWidget {
  const TutorMainPage({Key? key}) : super(key: key);

  @override
  _TutorMainPageState createState() => _TutorMainPageState();
}

class _TutorMainPageState extends State<TutorMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Ionicons.notifications_outline,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 52,
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          child: Row(
                            children: [
                              Icon(
                                Ionicons.location_outline,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: DropdownButton<String>(
                                  items: [
                                    DropdownMenuItem(
                                      child: Text("Sylhet"),
                                    )
                                  ],
                                  onChanged: (Object? value) {},
                                  isExpanded: true,
                                  underline: Container(),
                                ),
                              ),
                              VerticalDivider(
                                thickness: 2,
                                color: Colors.grey,
                                indent: 2,
                                endIndent: 2,
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  primary: Colors.grey,
                                ),
                                child: Text(
                                  "Search",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Icon(Icons.tune),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index){
                    return TutorCardComponent();
                  },

                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {  },
        child: Icon(Icons.add),

      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Ionicons.home_outline),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Ionicons.chatbubble_outline,
                ),
                color: Colors.grey,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Ionicons.heart_outline,
                ),
                color: Colors.grey,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Ionicons.person_outline,
                ),
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
