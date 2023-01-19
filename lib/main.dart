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
        ));
  }
}

class MyAppstate extends ChangeNotifier {
  var opacityList = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0];
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return Opacity(
            opacity: 0.5,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                height: 50,
                width: 50,
                child: Material(
                  color: Colors.blueGrey,
                  child: InkWell(
                    child: Image.network(
                        'https://external-preview.redd.it/CGvAddyJJ__1SbfGCrnHrNKmuQhU8EjruyANV_4wNJA.jpg?auto=webp&s=d721c80ec2f8313992f9bd448016e5a57d623c6ar'),
                    onTap: () {},
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
