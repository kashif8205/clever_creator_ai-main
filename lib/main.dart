import 'package:clever_creator_ai/provider/recording_provider.dart';
import 'package:clever_creator_ai/views/screens/voice_rec_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<VoiceRecorderProvider>(create: (context) => VoiceRecorderProvider())
      ],
      child: MaterialApp(
          title: 'Clever Creater Ai',
          darkTheme: ThemeData.dark(),   
          theme: ThemeData(
            fontFamily: 'PlusJakartaSans' 
          ),
          debugShowCheckedModeBanner: false, 
          home: VoiceRecScreen()),
    );
  }
}

