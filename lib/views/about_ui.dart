import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUI extends StatefulWidget {
  const AboutUI({super.key});

  @override
  State<AboutUI> createState() => _AboutUIState();
}

class _AboutUIState extends State<AboutUI> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 35.0,
            ),
            Image.asset(
              'assets/images/saulogo.png',
              width: 150.0,
            ),
            SizedBox(
              height: 35.0,
            ),
            Text(
              'Tech SAU BUFFET',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 35.0,
            ),
            Text(
                textAlign: TextAlign.center,
                'แอปพลิเคชั่นร้านหมูกะทะ\nเพื่อคนไทย\nโดยเด็กใหม่\nสนใจแอปพลิเคชั่นติดต่อ\n'),
            Text(
              'เด็กไอทีSAU',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            GestureDetector(
              onTap: () {
                _makePhoneCall('0617878797');
              },
              child: Image.asset(
                'assets/images/sauqr.png',
                height: 85,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
