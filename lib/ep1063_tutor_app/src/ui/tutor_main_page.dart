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
              const SizedBox(
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
                              const Icon(
                                Ionicons.location_outline,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: DropdownButton<String>(
                                  items: [
                                    const DropdownMenuItem(
                                      child: Text("Sylhet"),
                                    )
                                  ],
                                  onChanged: (Object? value) {},
                                  isExpanded: true,
                                  underline: Container(),
                                ),
                              ),
                              const VerticalDivider(
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
                                child: const Text(
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
                    const SizedBox(
                      width: 16,
                    ),
                    const Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
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
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: TutorCardComponent(),
                    );
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
        child: const Icon(Icons.add),

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
