import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,elevation: 0,
        title: const Text("Home",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
    );
  }
}
