import 'package:flutter/material.dart';
import 'package:my_portfolio/Responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class SideLinks extends StatelessWidget {
  const SideLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 2,
      top: Responsive.isMobile(context)
          ? Responsive.heightOfScreen(context) * 0.1
          : Responsive.heightOfScreen(context) * 0.2,
      child: SizedBox(
        height: 200,
        width: 50,
        child: Column(
          children: [
            SideIcons(
                iconUrl: 'https://cdn-icons-png.flaticon.com/512/25/25231.png',
                sideLink: "https://github.com/princedev0407"),
            SideIcons(
                iconUrl:
                    'https://cdn-icons-png.flaticon.com/512/2111/2111463.png',
                sideLink:
                    "https://www.instagram.com/prince_0407/profilecard/?igsh=ZWo5aHN3c3ZiNWY0"),
            SideIcons(
                iconUrl:
                    'https://cdn-icons-png.flaticon.com/512/174/174857.png',
                sideLink: "https://www.linkedin.com/in/prince-5b3a47192"),
          ],
        ),
      ),
    );
  }
}

class SideIcons extends StatelessWidget {
  final String iconUrl;
  final String sideLink;
  const SideIcons({super.key, required this.iconUrl, required this.sideLink});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      backgroundColor: Colors.transparent,
      onPressed: () {
        launchUrl(Uri.parse(sideLink));
      },
      child: Image.network(
        iconUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
