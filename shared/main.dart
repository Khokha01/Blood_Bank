import 'package:flutter/material.dart';
import 'package:hope/model/login.dart';
import 'package:hope/model/logo.dart';
import 'package:hope/model/registeration.dart';
import 'package:hope/model/user.dart';
import 'package:hope/shared/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
          primary:  Color.fromARGB(255, 245, 24, 8),
        )
      ),
      home: Screen1(),
    );
  }
}