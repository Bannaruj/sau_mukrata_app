import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sau_mukrata_app/views/mugratha_splash_ui.dart';

void main() {
  runApp(SauMugrathState());
}

class SauMugrathState extends StatefulWidget {
  const SauMugrathState({super.key});

  @override
  State<SauMugrathState> createState() => SauMugrathStateState();
}

class SauMugrathStateState extends State<SauMugrathState> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MugrathaSplashUI(),
      theme: ThemeData(
          textTheme: GoogleFonts.kanitTextTheme(
        Theme.of(context).textTheme,
      )),
    );
  }
}
