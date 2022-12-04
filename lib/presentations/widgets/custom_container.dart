import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final IconData? icons;

  final String? text;
  const CustomContainer({
    this.icons,
    this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.teal,
      ),
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Icon(
            icons,
            size: 90,
          ),
          Text(
            text!.toUpperCase(),
            style: const TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
