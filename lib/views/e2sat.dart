import 'package:competition/Constants/constant_file.dart';
import 'package:flutter/material.dart';

class E2sat extends StatefulWidget {
  const E2sat({super.key});

  @override
  State<E2sat> createState() => _E2satState();
}

class _E2satState extends State<E2sat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ميزان', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: kPrimaryColor2,
      ),
      backgroundColor:const Color.fromARGB(255, 177, 169, 169),
    );
  }
}