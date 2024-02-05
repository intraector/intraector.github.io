import 'package:flutter/material.dart';

import 'big_screen.dart';
import 'small_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3efe6),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return switch (constraints.maxWidth) {
                  <= 700 => const SmallScreen(),
                  _ => const BigScreen(),
                };
              },
            ),
          ),
        ),
      ),
    );
  }
}
