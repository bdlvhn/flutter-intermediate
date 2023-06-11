import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;

  const DefaultLayout({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: child,
    );
  }
}
