import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Image.asset("assets/img/dermatologist.png")
        ),
      ),
    );
  }
}





/*
body: Center(
child: Text("I am Practice Screen"),
),*/
