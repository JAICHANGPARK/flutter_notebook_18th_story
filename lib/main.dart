import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ep1073_cargo_transportation/cargo_transportation.dart';


main() {
  runApp(
     const ProviderScope(
      child: CargoTransportation(),
    ),
  );
}
