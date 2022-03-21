
import 'package:flutter/material.dart';

class LivingRoomCategory{
  IconData iconData;
  String title;

  LivingRoomCategory(this.iconData, this.title);
}

List<LivingRoomCategory> categoryItems = [
  LivingRoomCategory(Icons.ac_unit, "AC"),
  LivingRoomCategory(Icons.tv, "TV"),
  LivingRoomCategory(Icons.lightbulb, "Light"),

  LivingRoomCategory(Icons.music_note, "Music"),
  LivingRoomCategory(Icons.videocam, "CCTV"),
];