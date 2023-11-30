import 'package:flutter/material.dart';

class Mytab extends StatelessWidget {
  final String iconPath;
  const Mytab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 227, 204, 204),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Image.asset(
          iconPath,
          color: Colors.red,
        ),
      ),
    );
  }
}
