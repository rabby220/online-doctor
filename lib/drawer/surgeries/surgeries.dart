import 'package:flutter/material.dart';


class SurgeriesScreen extends StatefulWidget {
  const SurgeriesScreen({super.key});

  @override
  State<SurgeriesScreen> createState() => _SurgeriesScreenState();
}

class _SurgeriesScreenState extends State<SurgeriesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Sergerices Screen"),),
    );
  }
}
