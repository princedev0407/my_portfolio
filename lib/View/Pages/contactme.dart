import 'package:flutter/material.dart';
import 'package:my_portfolio/Responsive/responsive.dart';
import 'package:my_portfolio/Utils/colors.dart';
import 'dart:ui' as ui;

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "GET IN TOUCH!",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            foreground: Paint()
            ..shader = ui.Gradient.linear(
              Offset(0, 20),
              Offset(150, 20),
              <Color>[
                Colors.red,
                Colors.yellow,
              ]
            )
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) * 0.9
              : Responsive.widthOfScreen(context) * 0.7,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: shadoColor,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[50],
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  contactFormField("Name", 1, "Enter Your Name....."),
                  contactFormField("Email", 1, "Enter Your Email....."),
                  contactFormField("Phone", 1, "Enter Your Phone number....."),
                  contactFormField("Message", 10, "Enter Your Message....."),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.cyan,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Submit",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
  contactFormField(name, maxLine, hintText) {
      return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                maxLines: maxLine,
                decoration: InputDecoration(
                    hintText: hintText,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    )),
              ),
            ),
          ],
        ),
      );
    }
}
