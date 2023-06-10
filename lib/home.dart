import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
     ),
     drawer: Drawer(
       child: ListView(
         // Important: Remove any padding from the ListView.
         padding: EdgeInsets.zero,
         children: [
           const DrawerHeader(
             decoration: BoxDecoration(
               color: Colors.blue,
             ),
             child: Text('Drawer Header'),
           ),
           ListTile(
             leading: const Icon(
               Icons.find_in_page,
             ),
             title: const Text('Find Doctor'),
             onTap: () {
               context.go('/find_doctor');
             },
           ),
           ListTile(
             leading: const Icon(
               Icons.video_call_outlined,
             ),
             title: const Text('Video Consult'),
             onTap: () {
               context.go('/video_consult');
             },

           ),
           ListTile(
             leading: const Icon(
               Icons.medical_information_rounded,
             ),
             title: const Text('Medicines'),
             onTap: () {
             context.go('/medicine');
             },
           ),
           ListTile(
             leading: const Icon(
               Icons.label_outline_sharp,
             ),
             title: const Text('Lab Tests'),
             onTap: () {
               context.go('/lab-test');
             },
           ),
           ListTile(
             leading: const Icon(
               Icons.surfing_rounded,
             ),
             title: const Text('Surgeries'),
             onTap: () {
               context.go('/surgery');
             },
           ),
         ],
       ),
     ),
   );
  }
}
