import 'package:flutter/material.dart';

class ComproveWidget extends StatelessWidget {
  final String msg1;
  final String msg2;
  const ComproveWidget({
    this.msg1,
    this.msg2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(msg1),
            Text(msg2),
          ],
        )
      ],
    ));
  }
}
