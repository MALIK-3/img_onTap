import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Load Images
  String _image1 = 'assets/images/images1.jpeg';

  //Image Changer
  void _imageChanger() {
    setState(() {
      if (_image1 == 'assets/images/images1.jpeg') {
        _image1 = 'assets/images/image2.jpg';
      } else {
        _image1 = 'assets/images/images1.jpeg';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _imageChanger,
      child: Image.asset(
        _image1,
      ),
    );
  }
}
