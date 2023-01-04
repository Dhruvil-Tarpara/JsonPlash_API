import 'package:flutter/material.dart';
import 'package:jasonplash/screens/details_page.dart';
import 'package:jasonplash/screens/details_pagetwo.dart';
import 'package:jasonplash/screens/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const Homepage(),
        "details": (context) => const DetailsPage(),
        "details2": (context) => const DetailsPageTwo(),
      },
    ),
  );
}
