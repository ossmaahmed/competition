import 'package:competition/Databases/sharedpref.dart';
import 'package:competition/views/e2sat.dart';
import 'package:competition/views/loginpage.dart';
import 'package:competition/views/personalinfo.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Cachhelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}