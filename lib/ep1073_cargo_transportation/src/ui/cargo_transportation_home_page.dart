import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../model/cargo_item.dart';

class CargoTransportationHomePage extends StatefulWidget {
  const CargoTransportationHomePage({Key? key}) : super(key: key);

  @override
  _CargoTransportationHomePageState createState() => _CargoTransportationHomePageState();
}

class _CargoTransportationHomePageState extends State<CargoTransportationHomePage> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple[50],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Monday, July 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Barcelona",
                                style: TextStyle(fontWeight: FontWeight.w200),
                              ),
                            ],
                          ),
                          Container(
                            height: 36,
                            width: 36,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(4)),
                            child: const Icon(
                              Ionicons.apps_outline,
                              size: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Groupage\nCargo",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 42,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    child: const Text(
                                      "Pick up",
                                      style: TextStyle(color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                CircularPercentIndicator(
                                  radius: 48,
                                  lineWidth: 4,
                                  backgroundWidth: 2,
                                  percent: 0.45,
                                  progressColor: Colors.black,
                                  center: const Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "45",
                                          style: TextStyle(
                                            fontSize: 34,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "%",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "2h nex task",
                                        style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4),
                                        child: Text(
                                          "Stay Hotal - Mandarin",
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Oriental, Barcelona",
                                        style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                        decoration:
                                            BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24)),
                                        child: Row(
                                          children: [
                                            Transform.rotate(
                                              angle: -(47 / pi),
                                              child: const Icon(
                                                Icons.arrow_back,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            const Icon(
                                              Ionicons.bed_outline,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ListView.separated(
                  itemCount: cargoItems.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            height: 64,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                (cargoItems[index].isOut ?? false)
                                    ? Transform.rotate(
                                        angle: (2 / pi),
                                        child: const Icon(
                                          Icons.arrow_back,
                                          size: 24,
                                        ),
                                      )
                                    : Transform.rotate(
                                        angle: -(47 / pi),
                                        child: const Icon(
                                          Icons.arrow_back,
                                          size: 20,
                                        ),
                                      ),
                                (cargoItems[index].withBed ?? false)
                                    ? const Icon(
                                        Ionicons.bed_outline,
                                        size: 16,
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${cargoItems[index].time}",
                                style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "# ${index}",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    " - ${cargoItems[index].title}",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "${cargoItems[index].location}",
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          setState(() {
            _tabIndex = idx;
          });
        },
        currentIndex: _tabIndex,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: _tabIndex == 0 ? const Icon(Icons.fact_check) : const Icon(Icons.fact_check_outlined),
            label: "fact_check",
          ),
          BottomNavigationBarItem(
            icon: _tabIndex == 1 ? const Icon(Icons.sms) : const Icon(Icons.sms_outlined),
            label: "sms",
          ),
          BottomNavigationBarItem(
            icon: _tabIndex == 2 ? const Icon(Icons.motion_photos_on) : const Icon(Icons.motion_photos_on_outlined),
            label: "motion_photos_on",
          ),
          BottomNavigationBarItem(
            icon: _tabIndex == 3 ? const Icon(Icons.account_circle) : const Icon(Icons.account_circle_outlined),
            label: "account_circle",
          ),
        ],
      ),
    );
  }
}
