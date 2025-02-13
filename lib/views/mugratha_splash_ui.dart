// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:sau_mukrata_app/views/home_ui.dart';

class MugrathaSplashUI extends StatefulWidget {
  const MugrathaSplashUI({super.key});

  @override
  State<MugrathaSplashUI> createState() => _MugrathaSplashUIState();
}

class _MugrathaSplashUIState extends State<MugrathaSplashUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width * 0.65,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Tech SAU Buffet',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'Copyright © 2025 by SSDCARD12',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
