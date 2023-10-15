import 'package:flutter/material.dart';
import 'package:park_elm_fanavari/screens/dashboard.dart';
import 'package:park_elm_fanavari/screens/login.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Dashboard(),
                        ));
                  },
                  child: const Text('Dashboard')),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ));
                  },
                  child: const Text('Login')),
              
            ],
          ),
        ),
      ),
    );
  }
}
