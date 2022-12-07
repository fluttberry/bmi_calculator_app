import 'package:bmi_app/constants/text_style/text_styles.dart';
import 'package:flutter/material.dart';

class WeightAgeWidget extends StatelessWidget {
  final String? text;
  final String? countText;
  final void Function()? onPlus;
  final void Function()? onMinus;
  const WeightAgeWidget(
      {super.key, this.text, this.countText, this.onPlus, this.onMinus});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.teal,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              text!.toUpperCase(),
              style: TextStyles.text15Grey,
            ),
            Text(
              countText!,
              style: TextStyles.text60White,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                FloatingActionButton(
                  onPressed: onMinus,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: onPlus,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
