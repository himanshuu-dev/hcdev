import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                    ? primaryColor.withValues(alpha: 0.3)
                    : primaryColor.withValues(alpha: 0.1),
                blurRadius: 30,
                spreadRadius: 10,
              ),
            ],
            image: DecorationImage(
              image: NetworkImage(
                'https://testharhtzkiftxpazyx.supabase.co/storage/v1/object/public/hcdev/dp.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        if (isDesktop) ...[
          const SizedBox(width: 40),
        ] else ...[
          const SizedBox(height: 40),
        ],

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
                '''Flutter Developer with 3 years of experience in creating high-performance, crossplatform applications using Flutter and Dart. Expertise in integrating Firebase,
REST APIs, and third-party packages to enhance app functionality. Proficient in
state management solutions such as Riverpod, GetX, and Provider, ensuring
scalable and maintainable code. Committed to implementing clean architecture
and optimizing performance for user-friendly interfaces.''',
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
                    url:
                        'https://www.linkedin.com/in/himanshu-choudhary-dev-1999-new/',
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
