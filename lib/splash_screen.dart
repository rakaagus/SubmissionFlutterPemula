import 'dart:async';

import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula_dicoding/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return HomeScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.asset("images/stt_nf_image.png", fit: BoxFit.contain),
          ),
          SizedBox(height: 20),
          const Text(
            "Event Organizer App",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24.0,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20),
          const Text(
            "Choose Your Event Now",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "NotoSerif",
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
