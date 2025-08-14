import 'package:flutter/material.dart';
import 'package:xo/src/home/widgets/custom_grid.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('XorO'),
        centerTitle: true,
      ),
      body: CustomGrid(),
    );
  }
}

