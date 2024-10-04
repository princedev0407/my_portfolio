import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("© My Portfolio, All right reserved"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Built By Prince",
            ),
          ],
        )
      ],
    );
  }
}