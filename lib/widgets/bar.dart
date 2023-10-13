import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  final String lower;
  const Bar({super.key, required this.lower});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          const SizedBox(
            height: 300,
            width: 50,
            child: Card(
              color: Colors.grey,
              elevation: 3.0,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(lower, style: const TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
