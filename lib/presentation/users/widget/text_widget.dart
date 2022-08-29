import 'package:flutter/material.dart';
import 'package:sample/core/colors.dart';

class Textwidget extends StatelessWidget {
  const Textwidget({
    Key? key,
    required this.count,
    required this.title,
  }) : super(key: key);
  final String count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Text(
            count,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Text(
            title,
            style: const TextStyle(color: kGrey, fontSize: 15),
          )
        ],
      ),
    );
  }
}
