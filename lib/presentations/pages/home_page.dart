import 'package:bmi_app/constants/text_style/text_styles.dart';
import 'package:bmi_app/presentations/widgets/custom_container.dart';
import 'package:bmi_app/presentations/widgets/decor_br_widget.dart';
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
  double sliderHeight = 50;

  void countWeight(int tuuraSanBer) {
    if (tuuraSanBer == 0) {
      weight--;
    }
    if (tuuraSanBer == 1) {
      weight++;
    }
    setState(() {});
  }

  void countAge(int tuuraSanBer) {
    if (tuuraSanBer == 0) {
      age--;
    }
    if (tuuraSanBer == 1) {
      age++;
    }
    setState(() {});
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomContainer(text: 'male', icons: Icons.male),
              CustomContainer(text: 'female', icons: Icons.female),
            ],
          ),
          Container(
            decoration: DecorationBRWidget.borderRadius12Teal,
            width: MediaQuery.of(context).size.width * 0.90,
            height: MediaQuery.of(context).size.height * 0.20,
            child: Column(
              children: [
                const Text(
                  'Height',
                  style: TextStyles.text25Black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      sliderHeight.toStringAsFixed(0),
                      style: TextStyles.text60White,
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      'cm',
                      style: TextStyles.text15White,
                    ),
                  ],
                ),
                Slider(
                  activeColor: Colors.red,
                  inactiveColor: Colors.white,
                  thumbColor: Colors.black,
                  max: 300,
                  value: sliderHeight,
                  onChanged: ((adamOzgortty) {
                    sliderHeight = adamOzgortty;
                    setState(() {});
                  }),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              WeightAgeWidget(
                countText: weight.toString(),
                text: 'weight',
                onMinus: () => countWeight(0),
                onPlus: () => countWeight(1),
              ),
              WeightAgeWidget(
                countText: age.toString(),
                text: 'age',
                onMinus: () => countAge(0),
                onPlus: () => countAge(1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
