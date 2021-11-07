import 'package:flutter/material.dart';
import 'package:flutter_article/pages/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage()
      },
    )
  );
}
