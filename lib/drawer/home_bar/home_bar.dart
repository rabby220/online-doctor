import 'package:flutter/material.dart';


class HomeBarScreen extends StatefulWidget {
  const HomeBarScreen({super.key});

  @override
  State<HomeBarScreen> createState() => _HomeBarScreenState();
}

class _HomeBarScreenState extends State<HomeBarScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Home Screen "),),
    );
  }
}

