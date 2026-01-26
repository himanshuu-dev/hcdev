import 'package:flutter/material.dart';
import 'package:portfolio/home/widgets/contact_section.dart';
import 'package:portfolio/home/widgets/header_section.dart';
import 'package:portfolio/home/widgets/navbar.dart';
import 'package:portfolio/home/widgets/project_grid.dart';
import 'package:portfolio/home/widgets/skills_section.dart';
import 'package:portfolio/home/widgets/timeline_section.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isDesktop = width > 800;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: isDark
                ? [const Color(0xFF1E1E24), const Color(0xFF23252E)]
                : [const Color(0xFFFFFFFF), const Color(0xFFF0F0F0)],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: isDesktop ? 100 : 20,
            vertical: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NavBar(),
              const SizedBox(height: 60),
              const HeaderSection(),
              const SizedBox(height: 80),
              const SectionTitle(title: "My Skills", number: "01"),
              const SkillsSection(),
              const SizedBox(height: 80),
              const SectionTitle(
                title: "Featured Client Projects",
                number: "02",
              ),
              const ProjectsGrid(),
              const SizedBox(height: 80),
              // const SectionTitle(title: "Personal Projects", number: "03"),
              // const ProjectsGrid(),
              // const SizedBox(height: 80),
              const SectionTitle(title: "Experience & Education", number: "04"),
              const TimelineSection(),
              const SizedBox(height: 80),
              const ContactSection(),
              const SizedBox(height: 40),
              Center(
                child: Text(
                  "Built with 💙 in Flutter",
                  style: TextStyle(
                    color: isDark ? Colors.grey : Colors.grey[700],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          launchUrl(
            Uri.parse(
              'https://testharhtzkiftxpazyx.supabase.co/storage/v1/object/public/hcdev/himanshu.pdf',
            ),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
        icon: Icon(Icons.download, color: isDark ? Colors.black : Colors.white),
        label: Text(
          "Download CV",
          style: TextStyle(
            color: isDark ? Colors.black : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final String number;
  const SectionTitle({super.key, required this.title, required this.number});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Text(
            number,
            style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Container(
              height: 1,
              color: isDark ? Colors.grey[800] : Colors.grey[300],
            ),
          ),
        ],
      ),
    );
  }
}
