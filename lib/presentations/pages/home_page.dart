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
          children: const [
            CustomContainer(text: 'male', icons: Icons.male),
            CustomContainer(text: 'female', icons: Icons.female),
          ],
        ),
        const CustomContainer(
          text: 'height',
          
        )
      ]),
    );
  }
}
