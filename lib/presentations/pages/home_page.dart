import 'package:bmi_app/presentations/widgets/custom_container.dart';
import 'package:bmi_app/presentations/widgets/weight_age_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int san = 0;

  void countAdd() {
    setState(() {});
    san = san + 1;
  }

  void countRemove() {
    setState(() {});
    if (san == 0) {
      san++;
    }
    san = san - 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomContainer(text: 'male', icons: Icons.male),
              CustomContainer(text: 'female', icons: Icons.female),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const WeightAgeWidget(
                countText: '60',
                text: 'weight',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
