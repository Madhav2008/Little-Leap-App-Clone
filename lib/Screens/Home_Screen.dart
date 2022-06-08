import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Container(decoration: BoxDecoration(),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
