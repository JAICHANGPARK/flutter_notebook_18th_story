import 'package:flutter/material.dart';

class FitnessNutritionMainPage extends StatefulWidget {
  const FitnessNutritionMainPage({Key? key}) : super(key: key);

  @override
  State<FitnessNutritionMainPage> createState() => _FitnessNutritionMainPageState();
}

class _FitnessNutritionMainPageState extends State<FitnessNutritionMainPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 72,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 94,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 480,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.2),
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        onTap: (idx) {
          setState(() {
            _index = idx;
          });
        },
        backgroundColor: Colors.white.withOpacity(0.1),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "meal plan"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "meal plan"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "meal plan"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "meal plan"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "meal plan"),
        ],
      ),
    );
  }
}
