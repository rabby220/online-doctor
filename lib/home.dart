import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'drawer/diagnostic/diagnostic.dart';
import 'drawer/doctor_bar/doctor_bar.dart';
import 'drawer/home_bar/home_bar.dart';
import 'drawer/medine_bar/medine_bar.dart';
import 'drawer/more_bar/more_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var  _currentIndex = 0;

  var pageChanger = const [
    HomeBarScreen(),
    MedicineBarScreen(),
    DoctorBarScreen(),
    DiagnosticBarScreen(),
    MoreBarScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageChanger[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.home_rounded),
            title: const Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const ImageIcon(AssetImage('assets/icons/medicine.png')),
            title: const Text("Medicine"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const ImageIcon(AssetImage('assets/icons/doctor.png')),
            title: const Text("Doctor"),
            selectedColor: Colors.orange,
          ),


          SalomonBottomBarItem(
            icon: const ImageIcon(AssetImage('assets/icons/lab.png')),
            title: const Text("Diagnostic"),
            selectedColor: Colors.teal,
          ),

          SalomonBottomBarItem(
            icon: const ImageIcon(AssetImage('assets/icons/more.png')),
            title: const Text("More"),
            selectedColor: Colors.pink,

          ),
        ],
      ),

    );
  }
}