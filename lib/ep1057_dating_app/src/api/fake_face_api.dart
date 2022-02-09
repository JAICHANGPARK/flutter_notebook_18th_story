import 'dart:convert';

import 'package:flutter_notebook_18th_story/ep1057_dating_app/src/model/fake_face.dart';
import 'package:http/http.dart' as http;

Future<FakeFace?> requestFakeFaceImg() async {
  final response = await http.get(Uri.parse("https://fakeface.rest/face/json"));
  if (response.statusCode == 200) {
    return FakeFace.fromJson(jsonDecode(response.body));
  } else {
    return null;
  }
}
