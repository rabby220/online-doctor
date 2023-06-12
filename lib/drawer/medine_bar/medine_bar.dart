import 'package:flutter/material.dart';

class MedicineBarScreen extends StatefulWidget {
  const MedicineBarScreen({super.key});

  @override
  State<MedicineBarScreen> createState() => _MedicineBarScreenState();
}

class _MedicineBarScreenState extends State<MedicineBarScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Medicine Screen "),),
    );
  }
}

