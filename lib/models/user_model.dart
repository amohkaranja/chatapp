import 'package:flutter/material.dart';

class User {
  final int id;
  final String name;
  final AssetImage imageUrl;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}
