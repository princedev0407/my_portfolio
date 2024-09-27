import 'package:flutter/material.dart';
import 'package:my_portfolio/Responsive/responsive.dart';

class ProfileAndIntro extends StatelessWidget {
  const ProfileAndIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            SizedBox(
              //Take full width in Mobile but only take half width in web
              width: Responsive.isMobile(context)
                  ? Responsive.widthOfScreen(context)
                  : Responsive.widthOfScreen(context) / 3,
              height: Responsive.isMobile(context)
                  ? Responsive.heightOfScreen(context) / 2
                  : Responsive.heightOfScreen(context) - 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset("asset/images/profile-pic.jpg",
                fit: BoxFit.cover,
                ),
              ),
              //child: Image.asset("asset/images/profile-pic.jpg"),
            ),
            SizedBox(
              //Take full width in Mobile but only take half width in web
              width: Responsive.isMobile(context)
                  ? Responsive.widthOfScreen(context)
                  : Responsive.widthOfScreen(context) / 2,
              height: Responsive.isMobile(context)
                  ? Responsive.heightOfScreen(context) / 3
                  : Responsive.heightOfScreen(context) - 70,
              child: Center(
                child: SizedBox(
                  height: 250,
                  width: Responsive.isMobile(context)
                      ? Responsive.widthOfScreen(context) * 0.85
                      : 450,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          spreadRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hello!",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.red,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text("I'm Prince.\nI'm a Developer and Content Creator.\nUI/UX Designer and a Flutter Developer.",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}