import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<FirebaseApp> firebaseApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: FutureBuilder<FirebaseApp>(
              future: firebaseApp,
              builder:
                  (BuildContext context, AsyncSnapshot<FirebaseApp> snapshot) {
                if (snapshot.hasError) {
                  return const Text("error");
                }
                if (snapshot.hasData) {
                  return const Text("success");
                }
                return const CircularProgressIndicator();
              }),
        ),
      ),
    );
  }
}
