import 'package:flutter/material.dart' hide Page;
import 'package:google_fonts/google_fonts.dart';
import 'page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basic Layout Flutter: Oktavian Eka Ramadhan 2341720117',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.ptSerifTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const Page(),
    );
  }
}