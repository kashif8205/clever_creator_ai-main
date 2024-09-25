import 'package:clever_creator_ai/views/screens/clever_creator_ai_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        
        darkTheme: ThemeData.dark(),
        theme: ThemeData(
          fontFamily: 'PlusJakartaSans'
        ),
        debugShowCheckedModeBanner: false,
        home: const CleverCreatorAiScreen());
  }
}
