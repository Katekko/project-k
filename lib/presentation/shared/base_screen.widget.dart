import 'package:flutter/material.dart';

class BaseScreenWidget extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const BaseScreenWidget({required this.children, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(title, style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          ),
        ],
      ),
    );
  }
}
