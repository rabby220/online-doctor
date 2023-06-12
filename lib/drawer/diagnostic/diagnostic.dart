import 'package:flutter/material.dart';

class DiagnosticBarScreen extends StatefulWidget {
  const DiagnosticBarScreen({super.key});

  @override
  State<DiagnosticBarScreen> createState() => _DiagnosticBarScreenState();
}

class _DiagnosticBarScreenState extends State<DiagnosticBarScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Diagnostic Screen"),),
    );
  }
}
