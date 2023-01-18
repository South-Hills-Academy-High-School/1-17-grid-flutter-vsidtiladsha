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
class MyAppstate extends ChangeNotifier {}

class MyHomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder:  (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blueGrey(700),
              child: Image(image: Image.network('https://m.media-amazon.com/images/I/61MKG7Cg-5L.jpg')),
            ),
          )
        },
      ),
    
    );
  }
}