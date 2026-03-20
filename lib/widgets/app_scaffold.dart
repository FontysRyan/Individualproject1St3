import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;

  const AppScaffold({super.key, required this.child, required AppBar appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFCEC2E9),
              Color(0xFFB3A1D8),
            ],
          ),
        ),
        child: SafeArea(
          child: child,
        ),
      ),
    );
  }
}