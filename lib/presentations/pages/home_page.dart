import 'package:bmi_app/presentations/widgets/custom_container.dart';
import 'package:bmi_app/presentations/widgets/weight_age_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int weight = 60;
  int age = 25;
  void countWeight(String userdinBaskan) {
    if (userdinBaskan == 'Minus') {
      weight--;
    } else {
      weight++;
    }
    setState(() {});
  }

  void countAddAge() {
    setState(() {});
    age = age + 1;
  }

  void countRemoveAge() {
    setState(() {});
    if (age == 0) {
      age++;
    }
    age = age - 1;
  }

  void countAdd() {
    setState(() {});
    weight = weight + 1;
  }

  void countRemove() {
    setState(() {});
    if (weight == 0) {
      weight++;
    }
    weight = weight - 1;
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
              WeightAgeWidget(
                countText: weight.toString(),
                text: 'weight',
                onMinus: () => countWeight('Minus'),
                onPlus: () => countWeight('Plus'),
              ),
              WeightAgeWidget(
                countText: age.toString(),
                text: 'age',
                onMinus: countRemoveAge,
                onPlus: countAddAge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
