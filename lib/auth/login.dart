import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:go_router/go_router.dart';
import 'package:practo_doctor_test/home.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                  child: Column(
                children: [
                  Card(
                    elevation: 15.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Card(
                    elevation: 15.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: isSelected
                                ? const Icon(Icons.remove_red_eye)
                                : const Icon(Icons.panorama_fish_eye)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Card(
                          child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(color: Colors.white),
                          backgroundColor: const Color(0xffca8c38),
                          padding: const EdgeInsets.only(
                              right: 15.0, left: 15.0, bottom: 10.0, top: 10.0),
                          elevation: 15.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          visualDensity: VisualDensity.adaptivePlatformDensity,
                        ),
                        onPressed: () {},
                        child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Login'),
                              Icon(
                                Icons.chevron_right,
                                size: 24.0,
                              ),
                            ]),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: (){
                        context.go('/signup');
                      },
                          child: const Text("Don't have and account? Sign up"))
                    ],
                  ),

                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
