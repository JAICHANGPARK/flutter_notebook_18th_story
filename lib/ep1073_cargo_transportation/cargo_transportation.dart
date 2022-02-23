import 'package:flutter/material.dart';

import 'src/ui/cargo_transportation_home_page.dart';

class CargoTransportation extends StatelessWidget {
  const CargoTransportation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CargoTransportationHomePage(),
    );
  }
}
