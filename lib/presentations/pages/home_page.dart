import 'package:bmi_app/constants/text_style/text_styles.dart';
import 'package:bmi_app/presentations/widgets/custom_container.dart';
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
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomContainer(text: 'male', icons: Icons.male),
            CustomContainer(text: 'female', icons: Icons.female),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.teal,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      'weight'.toUpperCase(),
                      style: TextStyles.text15Grey,
                    ),
                    Text(
                      san.toString(),
                      style: TextStyles.text60White,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        FloatingActionButton(
                          onPressed: countRemove,
                          child: const Icon(Icons.remove),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        FloatingActionButton(
                          onPressed: countAdd,
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.teal,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      'weight'.toUpperCase(),
                      style: TextStyles.text15Grey,
                    ),
                    Text(
                      san.toString(),
                      style: TextStyles.text60White,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        FloatingActionButton(
                          onPressed: countRemove,
                          child: const Icon(Icons.remove),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        FloatingActionButton(
                          onPressed: countAdd,
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
