import 'package:bmi_app/constants/text_style/text_styles.dart';
import 'package:bmi_app/presentations/widgets/decor_br_widget.dart';
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
      decoration: DecorationBRWidget.borderRadius12Teal,
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Icon(
            icons,
            size: 90,
          ),
          Text(
            text!.toUpperCase(),
            style: TextStyles.text25Black,
          ),
        ],
      ),
    );
  }
}
