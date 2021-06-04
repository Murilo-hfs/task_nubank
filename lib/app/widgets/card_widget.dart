import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String msg1;
  final String msg2;
  final Icon icon;
  const CardWidget({
    this.msg1,
    this.msg2,
    this.icon,
  });

  @override
  Widget build(context) {
    return Card(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon ?? Text(msg1),
              ],
            ),
            Text(msg2),
          ],
        ),
      ]),
    );
  }
}
