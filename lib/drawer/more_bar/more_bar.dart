import 'package:flutter/material.dart';


class MoreBarScreen extends StatefulWidget {
  const MoreBarScreen({super.key});

  @override
  State<MoreBarScreen> createState() => _MoreBarScreenState();
}

class _MoreBarScreenState extends State<MoreBarScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("More Screen"),),
    );
  }
}
