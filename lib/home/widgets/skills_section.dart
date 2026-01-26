import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final skills = [
      {"name": "Flutter", "icon": FontAwesomeIcons.flutter},
      {"name": "Dart", "icon": FontAwesomeIcons.dartLang},
      {"name": "Firebase", "icon": FontAwesomeIcons.fire},
      {"name": "REST API", "icon": Icons.api},
      {"name": "Provider", "icon": FontAwesomeIcons.dartLang},
      {"name": "Riverpod", "icon": FontAwesomeIcons.dartLang},
      {"name": "Bloc", "icon": FontAwesomeIcons.dartLang},
      {"name": "GetX", "icon": FontAwesomeIcons.dartLang},
      {"name": "MVVM", "icon": FontAwesomeIcons.filesPinwheel},
      {"name": "Git", "icon": FontAwesomeIcons.gitAlt},
      {"name": "CI/CD", "icon": FontAwesomeIcons.codeCommit},
      {"name": "Supabase", "icon": FontAwesomeIcons.database},
      {"name": "SQFlite", "icon": FontAwesomeIcons.database},
      {"name": "UI/UX", "icon": Icons.brush},
      {"name": "Payment Gateways", "icon": FontAwesomeIcons.creditCard},
      {"name": "Google Playstore", "icon": FontAwesomeIcons.googlePlay},
      {"name": "Appstore", "icon": FontAwesomeIcons.appStore},
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
              Icon(
                skill['icon'] as IconData,
                color: Theme.of(context).primaryColor,
                size: 20,
              ),
              const SizedBox(width: 10),
              Text(
                skill['name'] as String,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
