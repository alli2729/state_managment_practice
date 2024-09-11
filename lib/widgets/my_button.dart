import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({
    super.key,
    required this.onTap,
    required this.count,
  });

  final void Function(int) onTap;
  int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            final int newCount = ++count;
            onTap(newCount);
          },
          child: Text('Press Me to Increase $count'),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: () {
            final int newCount = --count;
            onTap(newCount);
          },
          child: Text('Press Me to Decrease $count'),
        ),
      ],
    );
  }
}
