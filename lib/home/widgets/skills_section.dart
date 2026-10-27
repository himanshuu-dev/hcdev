import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final primaryColor = Theme.of(context).primaryColor;

    final List<SkillChipData> skills = [
      SkillChipData(
        name: "Flutter",
        icon: FaIcon(FontAwesomeIcons.flutter, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "Dart",
        icon: FaIcon(FontAwesomeIcons.dartLang, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "Firebase",
        icon: FaIcon(FontAwesomeIcons.fire, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "REST API Integration",
        icon: Icon(Icons.api, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "Google Maps Integration",
        icon: Icon(Icons.map_outlined, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "Booking Workflows",
        icon: Icon(Icons.book_online_outlined, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "Cross-Platform Development",
        icon: Icon(Icons.devices, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "Responsive UI",
        icon: Icon(
          Icons.dashboard_customize_outlined,
          color: primaryColor,
          size: 20,
        ),
      ),
      SkillChipData(
        name: "Provider",
        icon: FaIcon(FontAwesomeIcons.dartLang, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "Riverpod",
        icon: FaIcon(FontAwesomeIcons.dartLang, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "GetX",
        icon: FaIcon(FontAwesomeIcons.dartLang, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "MVVM",
        icon: FaIcon(
          FontAwesomeIcons.filesPinwheel,
          color: primaryColor,
          size: 20,
        ),
      ),
      SkillChipData(
        name: "Git",
        icon: FaIcon(FontAwesomeIcons.gitAlt, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "CI/CD",
        icon: FaIcon(
          FontAwesomeIcons.codeCommit,
          color: primaryColor,
          size: 20,
        ),
      ),
      SkillChipData(
        name: "Supabase",
        icon: FaIcon(FontAwesomeIcons.database, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "SQFlite",
        icon: FaIcon(FontAwesomeIcons.database, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "Offline-First Architecture",
        icon: Icon(Icons.offline_bolt_outlined, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "Local Data Caching",
        icon: Icon(Icons.storage_rounded, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "UI/UX",
        icon: Icon(Icons.brush, color: primaryColor, size: 20),
      ),
      SkillChipData(
        name: "Razorpay Integration",
        icon: FaIcon(
          FontAwesomeIcons.creditCard,
          color: primaryColor,
          size: 20,
        ),
      ),
      SkillChipData(
        name: "Google Play Publishing",
        icon: FaIcon(
          FontAwesomeIcons.googlePlay,
          color: primaryColor,
          size: 20,
        ),
      ),
      SkillChipData(
        name: "App Store Publishing",
        icon: FaIcon(FontAwesomeIcons.appStore, color: primaryColor, size: 20),
      ),
    ];

    return Wrap(
      spacing: 15,
      runSpacing: 15,
      alignment: WrapAlignment.start,
      children: skills.map((skill) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: isDark ? Colors.white10 : Colors.black12),
            boxShadow: isDark
                ? null
                : [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              skill.icon,
              const SizedBox(width: 10),
              Text(
                skill.name,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class SkillChipData {
  final String name;
  final Widget icon;

  const SkillChipData({required this.name, required this.icon});
}
