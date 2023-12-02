import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syntax/screen/createaccountscreen.dart';
import 'package:syntax/screen/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff002029),
        textTheme: TextTheme(
            titleMedium: GoogleFonts.nunito(
                color: Colors.white, fontWeight: FontWeight.bold)),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CreateAccount(),
    );
  }
}
