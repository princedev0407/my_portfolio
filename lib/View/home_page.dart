import 'package:flutter/material.dart';
import 'package:my_portfolio/Responsive/responsive.dart';
import 'package:my_portfolio/Utils/colors.dart';
import 'package:my_portfolio/View/Pages/about_me.dart';
import 'package:my_portfolio/View/Pages/contactme.dart';
import 'package:my_portfolio/View/Pages/drawer.dart';
import 'package:my_portfolio/View/Pages/footer.dart';
import 'package:my_portfolio/View/Pages/myprojects.dart';
import 'package:my_portfolio/View/Pages/myskills.dart';
import 'package:my_portfolio/View/Pages/profile_intro.dart';
import 'package:my_portfolio/View/Pages/sidelinks.dart';
import 'package:my_portfolio/View/Pages/topbar.dart';

class MyPortfolio extends StatelessWidget {
  MyPortfolio({super.key});

  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Prince",
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w900, color: textColor)),
        backgroundColor: Colors.pink[50],
        elevation: 3,
        toolbarHeight: 70,
        actions: [
          Responsive.isMobile(context)
              ? Padding(
            padding: const EdgeInsets.only(right: 13),
            child: IconButton(
                onPressed: () {
                  _globalKey.currentState!.openEndDrawer();
                },
                icon: const Icon(Icons.menu, color: textColor, size: 35)),
          )
              : TopBar(
            scrollController: _scrollController,
          ),
        ],
      ),
      endDrawer: Responsive.isMobile(context)
          ? MyDrawer(scrollController: _scrollController)
          : null,
      body: SafeArea(
        child:Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  const ProfileAndIntro(),
                  SizedBox(height: Responsive.isMobile(context)? 40:0),
                  const AboutMe(),
                  SizedBox(height: 55),
                  MySkills(),
                  SizedBox(height: 55),
                  MyProjects(),
                  SizedBox(height: 55),
                  ContactMe(),
                  SizedBox(height: 30),
                  Footer(),
                  SizedBox(height: 30),
                ]
              ),
            ),
            SideLinks(),
          ],
        ),
      ),
    );
  }
}
