import 'dart:async';

import 'package:bloc_volunteer_service/presentaion/loginpage/login_page.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('images/1.jpg'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // Image.asset('images/splashScreenLogo.png'),
            SizedBox(
              height: 10,
            ),
            Text(
              'FIVE MIN VOLUNTEER SERVICES',
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Text('Version 0.2.002\n  (10-03-2022)'))
          ],
        ),
      ),
    );
  }
}
