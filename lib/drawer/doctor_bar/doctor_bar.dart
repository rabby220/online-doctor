import 'package:flutter/material.dart';

class DoctorBarScreen extends StatefulWidget {
  const DoctorBarScreen({super.key});

  @override
  State<DoctorBarScreen> createState() => _DoctorBarScreenState();
}

class _DoctorBarScreenState extends State<DoctorBarScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Doctor Screen"),),
    );
  }
}

