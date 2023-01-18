import 'dart:html';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({super.key});

 @override 
 Widget build(BuildContext context) {
  return ChangeNotifierProvider(
    create: (context) => MyAppstate(),
    child: MaterialApp(
      title: '1-17 App',
      theme: ThemeData(),
      home: MyHomePage(),
    )
  );
 }
}