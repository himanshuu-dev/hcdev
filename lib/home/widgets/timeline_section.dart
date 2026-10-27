import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TimelineSection extends StatelessWidget {
  const TimelineSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TimelineTile(
          year: "Mar 2, 2026 - Nov 25, 2026 (scheduled end)",
          title: "Flutter Developer",
          subtitle: "Zopflix (Shipra Travels)",
          desc:
              '''Completed Flutter development for two mobility products: Fomo Corp, a B2B platform for corporate cab operations and business travel workflows, and Fomo Cabs, a B2C cab-booking app focused on rider discovery and booking journeys. Worked on cross-platform interfaces, booking and maps experiences, and integrations, with a focus on maintainable architecture and consistent user experiences. Employment is scheduled to conclude on November 25, 2026.''',
          links: [
            TimelineLink(label: "Zopflix", url: "https://www.zopflix.com/"),
            TimelineLink(
              label: "Shipra Travels",
              url: "https://www.shipratravels.com/",
            ),
          ],
          isEducation: false,
        ),
        TimelineTile(
          year: "Mar 2023 - Feb 2026",
          title: "Flutter Developer",
          subtitle: "Laysan Technologies Pvt. Ltd.",
          desc:
              '''Developed and maintained 10+ cross-platform apps using Flutter, Integrated Firebase for authentication, analytics, push notifications, etc. Implemented Riverpod, Getx. Provider, etc for state management and improved app performance. Refactored outdated codebases and resolved compatibility issues in older projects.''',
          isEducation: false,
        ),
        TimelineTile(
          year: "2019 - 2022",
          title: "Bachelor of Computer Applications",
          subtitle: "Baddi University, Himachal Pradesh",
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
  final List<TimelineLink> links;

  const TimelineTile({
    super.key,
    required this.year,
    required this.title,
    required this.subtitle,
    required this.desc,
    required this.isEducation,
    this.links = const [],
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
                  if (links.isNotEmpty) ...[
                    const SizedBox(height: 14),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        for (final link in links)
                          OutlinedButton.icon(
                            onPressed: () {
                              launchUrl(Uri.parse(link.url));
                            },
                            icon: const Icon(Icons.open_in_new, size: 16),
                            label: Text(link.label),
                          ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TimelineLink {
  final String label;
  final String url;

  const TimelineLink({required this.label, required this.url});
}
