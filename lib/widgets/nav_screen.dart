import 'package:flutter/material.dart';

class NavPage extends StatelessWidget {
  final String label;

  const NavPage({
    super.key,
    required this.label,

  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Text(
            label,
            style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
    );

  }
}