import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int sugarCount = 0;

  int strength = 0;

  void increaseStrength() {
    setState(() {
      strength++;
      if (strength >= 5) {
        strength = 0;
      }

    });
  }

  void increaseSugars() {
    setState(() {
      sugarCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        const Text('Strength: '),
        Text(strength.toString()),
        Image.asset(
          'assets/img/coffee_bean.png',
          width: 25,
          colorBlendMode: BlendMode.multiply,
          color: Colors.brown[100],
        ),
        const Expanded(child: SizedBox()),
        TextButton(
          onPressed: increaseStrength,
          child: const Text('+'),
        ),
      ]),
      Row(children: [
        const Text('Sugars: '),
        Text(sugarCount.toString()),
        Image.asset(
          'assets/img/sugar_cube.png',
          width: 25,
          colorBlendMode: BlendMode.multiply,
          color: Colors.brown[100],
        ),
        const Expanded(child: SizedBox()),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.brown,
          ),
          onPressed: increaseSugars,
          child: const Text('+'),
        ),
      ]),
    ]);
  }
}
