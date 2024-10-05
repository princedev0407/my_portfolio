import 'package:flutter/material.dart';
import 'package:my_portfolio/Responsive/responsive.dart';
import 'package:my_portfolio/Utils/colors.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Skills",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context)
                ? 10
                : Responsive.widthOfScreen(context) / 4,
          ),
          child: const Wrap(
            children: [
              SkillCard(
                  url:
                      'https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png'),
              SkillCard(
                  url:
                      'https://raw.githubusercontent.com/github/explore/7456fdff59816d37ef383a6c8f32a26ff7332db2/topics/django/django.png'),
              SkillCard(
                  url:
                      'https://static-00.iconduck.com/assets.00/java-icon-378x512-w60vlu77.png'),
              SkillCard(
                  url:
                      'https://i0.wp.com/junilearning.com/wp-content/uploads/2020/06/python-programming-language.webp?resize=1024%2C1024&ssl=1'),
              SkillCard(
                  url: 'https://cdn-icons-png.flaticon.com/512/25/25231.png'),
            ],
          ),
        ),
      ],
    );
  }
}

class SkillCard extends StatelessWidget {
  final String url;
  const SkillCard({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: shadoColor,
              blurRadius: 6,
              spreadRadius: 4,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: SizedBox(
          height: !Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) / 7
              : 80,
          width: !Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) / 7
              : 80,
          child: Padding(
            padding: Responsive.isMobile(context)
                ? const EdgeInsets.all(10)
                : const EdgeInsets.all(30),
            child: Image.network(url),
          ),
        ),
      ),
    );
  }
}
