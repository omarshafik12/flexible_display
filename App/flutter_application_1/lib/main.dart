import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/intros/intros.dart';
import 'package:flutter_application_1/screens/home/home.dart';
import 'package:flutter_application_1/screens/validation/login_in/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const IntroScreen(),
      routes: {
        '/homepage': (context) => const HomePage(),
        '/intros': (context) => const IntroScreen(),
        '/login': (context) => LoginPage(),
      }
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: Text("Hello World!")), 
    body: TextinputWiget());
  }
}

class TextinputWiget extends StatefulWidget {
  const TextinputWiget({super.key});

  @override
  State<TextinputWiget> createState() => _TextinputWigetState();
}

class _TextinputWigetState extends State<TextinputWiget> {
  @override
  Widget build(BuildContext context) {
    return TextField(decoration: InputDecoration(
      prefixIcon: Icon(Icons.message), labelText: "Type a messaage: ")
      );
  }
}