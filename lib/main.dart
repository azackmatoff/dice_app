import 'package:dice_app/getx/pages/home_page_with_getx.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:dice_app/flutter_way/pages/home_page.dart';

void main() {
  runApp(const MyGetXApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dice App',
      home: HomePage(),
    );
  }
}

class MyGetXApp extends StatelessWidget {
  const MyGetXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Dice App',
      home: HomePageWithGetX(),
    );
  }
}


/// Best Practices
/// DRY - Don't Repeat Yourself
/// KISS - Keep It Simple, Stupid
/// YAGNI - You Aren't Gonna Need It
/// SOLID - Single Responsibility, Open-Closed, Liskov Substitution, Interface Segregation, Dependency Inversion
/// Convention Over Configuration
/// Separation of Concerns
/// Avoid Deep Nesting
/// Avoid Long Methods
/// Avoid Long Parameter Lists
/// Avoid Long Classes
/// Prefer Exceptions to Returning Error Codes
/// Use Enums for States
/// Use Named Constructors
/// Use Static Methods to Create Objects
/// Use Factory Constructors
/// Use Initializers for Final Fields
/// Use Cascades
/// Use the Null Aware Operator
/// Use the Conditional Operator
/// Use the Spread Operator
/// Use the Cascade Operator
/// Use the Collection If and Collection For Operators
/// Use the Async/Await Pattern
/// 