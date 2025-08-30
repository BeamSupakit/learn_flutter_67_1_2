import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SecondSreen()),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.deepPurple],
          begin: FractionalOffset(0, 0),
          end: FractionalOffset(1, 0),
          tileMode: TileMode.repeated,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'android/assets/image/app_screen.png',
              width: 200,
              height: 200,
            ),
          ),
          const SizedBox(height: 50),
          const SpinKitSpinningLines(color: Colors.white, size: 50.0),
        ],
      ),
    );
  }
}

class SecondSreen extends StatelessWidget {
  const SecondSreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: const Center(
        child: Text(
          'Welcome to the Second Screen!',
          style: TextStyle(
            fontSize: 24,
            color: Colors.amber,
            fontWeight: FontWeight.w500,
            fontFamily: "Alike",
          ),
        ),
      ),
    );
  }
}
