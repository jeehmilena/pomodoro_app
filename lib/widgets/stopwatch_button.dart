import 'package:flutter/material.dart';

class StopWatchButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;

  const StopWatchButton({
    required this.text,
    required this.icon,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            textStyle: Theme.of(context).textTheme.titleMedium),
        onPressed: onTap,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Icon(
                icon,
                size: 28,
              ),
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
