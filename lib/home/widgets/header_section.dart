import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/images.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 800;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final primaryColor = Theme.of(context).primaryColor;

    return Flex(
      direction: isDesktop ? Axis.horizontal : Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: isDesktop ? 2 : 0,
          child: Column(
            crossAxisAlignment: isDesktop
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            children: [
              Text(
                "Hello, I'm",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Himanshu Choudhary",
                style: TextStyle(
                  fontSize: isDesktop ? 50 : 36,
                  fontWeight: FontWeight.bold,
                  height: 1.1,
                ),
                textAlign: isDesktop ? TextAlign.left : TextAlign.center,
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: isDesktop ? 50 : 36,
                  fontWeight: FontWeight.bold,
                  color: isDark ? Colors.grey[500] : Colors.grey[700],
                  height: 1.1,
                ),
                textAlign: isDesktop ? TextAlign.left : TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                "I build beautiful, performant mobile applications for Android and iOS. Specialized in clean architecture, backend integration, and creating seamless user experiences.",
                style: TextStyle(
                  color: isDark ? Colors.grey[400] : Colors.grey[600],
                  fontSize: 16,
                ),
                textAlign: isDesktop ? TextAlign.left : TextAlign.center,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: isDesktop
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    icon: FontAwesomeIcons.github,
                    url: 'https://github.com/himanshuu-dev',
                  ),
                  SocialIcon(
                    icon: FontAwesomeIcons.linkedin,
                    url: 'https://www.linkedin.com/in/himanshu-choudhary-dev-1999-new/',
                  ),
                  SocialIcon(
                    icon: FontAwesomeIcons.instagram,
                    url: 'https://www.instagram.com/himanshu_ch1999/',
                  ),
                ],
              ),
            ],
          ),
        ),
        if (isDesktop) const SizedBox(width: 40),

        // Profile Image
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: primaryColor, width: 3),
            boxShadow: [
              BoxShadow(
                color: isDark
                    ? primaryColor.withValues(alpha:0.3)
                    : primaryColor.withValues(alpha:0.1),
                blurRadius: 30,
                spreadRadius: 10,
              ),
            ],
            image: DecorationImage(
              image: AssetImage(AppImages.dp),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final String url;
  const SocialIcon({super.key, required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return IconButton(
      onPressed: () => launchUrl(Uri.parse(url)),
      icon: FaIcon(
        icon,
        color: isDark ? Colors.white : Colors.black87,
        size: 20,
      ),
      hoverColor: Theme.of(context).primaryColor,
    );
  }
}
