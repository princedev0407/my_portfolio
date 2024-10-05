import 'package:flutter/material.dart';
import 'package:my_portfolio/Responsive/responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: Responsive.isMobile(context) ? 40 : 80,
    ),
    child: Column(
      children: [
        const Center(
          child: Text(
            "About Me",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // Use a Row to place the text on the left and image on the right
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded( // Start of Expanded widget for the text
              child: Text(
                "Hello My name is Prince. I am passionate about Technologies, Design, Writings and apart from the technology, I love to play musical instruments like Guitar. I am more interested in Web Development and App Development.\n\nI enjoy connecting with others to learn from them and also to share ideas and insights. Currently, I'm focused on App Development in Flutter.I am working on some other technologies as well:\n-Java\n-Python\n-Django\n-Dart and Flutter\n\nThank you! for visiting my portfolio, Feel free to explore my projects and Reach out to me if you'd like to connect. I'll try to get back to you as soon as I can.",
                style: TextStyle(
                  fontSize: Responsive.isMobile(context) ? 18 : 20,
                ),
                textAlign: TextAlign.justify,
              ),
            ), // Closing Expanded widget for the text
            const SizedBox(width: 20), // Add some spacing between text and image
            SizedBox(
              // Take full width in Mobile but only take half width in web
              width: Responsive.isMobile(context)
                  ? Responsive.widthOfScreen(context) / 2
                  : Responsive.widthOfScreen(context) / 4, // Adjust as needed
              height: Responsive.isMobile(context)
                  ? Responsive.heightOfScreen(context) / 2
                  : Responsive.heightOfScreen(context) - 150,
              child: Image.asset("asset/images/Aboutme.png"),
            ), // Closing SizedBox for the image
          ],
        ), // Closing Row for the text and image
      ],
    ), // Closing Column for the overall layout
  ); // Closing Padding
}
}