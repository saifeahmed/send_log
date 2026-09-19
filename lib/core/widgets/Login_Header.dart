import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({required this.green, required this.greenDark});

  final Color green;
  final Color greenDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [green, greenDark],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(18),

              child: Image.asset("assets/Screenshot 2026-09-19 171157.png"),
            ),
          ],
        ),
      ),
    );
  }
}