import 'package:bmi_app/constants/text_style/text_styles.dart';
import 'package:bmi_app/presentations/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomContainer(text: 'male', icons: Icons.male),
            CustomContainer(text: 'female', icons: Icons.female),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.teal,
          ),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                Text(
                  'weight'.toUpperCase(),
                  style: TextStyles.text70Grey,
                ),
                Text(
                  '60',
                  style: TextStyles().text60White,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text('data'),
                    const Text('data'),
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
