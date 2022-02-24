import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
              flex: 4,
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
                            children: [
                              const Text(
                                "Monday, July 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
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
                    const Expanded(
                      child: Placeholder(),
                    ),
                  ],
                ),
              ),
            ),

            const Expanded(
              flex: 3,
              child: const Placeholder(),
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
