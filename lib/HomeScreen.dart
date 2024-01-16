import 'package:flutter/material.dart';

import 'SlidingCardView.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter Page View',
          style: TextStyle(
              color: Colors.white
          ),
        ),
        backgroundColor: Colors.purple.shade300,
      ),
      body: const Center(
          child: SlidingCardView(),
      ),
    );
  }
}