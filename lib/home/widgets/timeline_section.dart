import 'package:flutter/material.dart';

class TimelineSection extends StatelessWidget {
  const TimelineSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TimelineTile(
          year: "2023 - Present",
          title: "Laysan Tecnologies Pvt. Ltd.",
          subtitle: "Tech Solutions Inc.",
          desc:
              "Leading the mobile team, architecting scalable apps, and mentoring juniors.",
          isEducation: false,
        ),
        TimelineTile(
          year: "2019 - 2022",
          title: "Bachelor of Computer Applications",
          subtitle: "Baddi University",
          desc: "Graduated with honors. Focus on Software Engineering.",
          isEducation: true,
        ),
      ],
    );
  }
}

class TimelineTile extends StatelessWidget {
  final String year;
  final String title;
  final String subtitle;
  final String desc;
  final bool isEducation;

  const TimelineTile({
    super.key,
    required this.year,
    required this.title,
    required this.subtitle,
    required this.desc,
    required this.isEducation,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: isEducation
                      ? Colors.orangeAccent
                      : Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
              Expanded(
                child: Container(
                  width: 2,
                  color: isDark ? Colors.grey[800] : Colors.grey[300],
                ),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    year,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: isDark ? Colors.grey[400] : Colors.grey[600],
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    desc,
                    style: TextStyle(
                      color: isDark ? Colors.grey[500] : Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
