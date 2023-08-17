import 'package:flutter/material.dart';

class InputTime extends StatelessWidget {
  final String title;
  final int value;
  final void Function()? increment;
  final void Function()? decrement;

  const InputTime(
      {super.key,
      required this.value,
      required this.title,
      this.increment,
      this.decrement});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: decrement,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.pink,
                padding: const EdgeInsets.all(15),
              ),
              child: const Icon(
                Icons.arrow_downward_rounded,
              ),
            ),
            Text(
              '$value min',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ElevatedButton(
              onPressed: increment,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.pink,
                padding: const EdgeInsets.all(15),
              ),
              child: const Icon(
                Icons.arrow_upward_rounded,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
