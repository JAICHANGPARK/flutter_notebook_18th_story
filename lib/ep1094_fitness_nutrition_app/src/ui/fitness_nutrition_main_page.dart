import 'package:flutter/material.dart';

class FitnessNutritionMainPage extends StatefulWidget {
  const FitnessNutritionMainPage({Key? key}) : super(key: key);

  @override
  State<FitnessNutritionMainPage> createState() => _FitnessNutritionMainPageState();
}

class _FitnessNutritionMainPageState extends State<FitnessNutritionMainPage> {
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
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                SizedBox(
                  height: 94,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(height: 16,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
