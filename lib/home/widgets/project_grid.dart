import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsGrid extends StatelessWidget {
  const ProjectsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      ProjectModel(
        title: "Tastes2plate",
        desc: "Tastes2Plate (t2p) - Online Intercity Food Delivery App.",
        image:
            'https://testharhtzkiftxpazyx.supabase.co/storage/v1/object/public/hcdev/t2p.png',
        tags: [
          'Flutter',
          'Dart',
          'GetX',
          'Razorpay',
          'Google Maps',
          'Responsive App',
        ],
        playstoreUri:
            'https://play.google.com/store/apps/details?id=me.taste2plate.app.customer',
        appstoreUri: 'https://apps.apple.com/in/app/tastes2plates/id1568919371',
      ),
      ProjectModel(
        title: "RucJa",
        desc: "Health Monitor Application",
        image:
            'https://testharhtzkiftxpazyx.supabase.co/storage/v1/object/public/hcdev/rucja.png',
        tags: ['Flutter', 'Dart', 'Riverpod', 'Bluetooth'],
        playstoreUri:
            'https://play.google.com/store/apps/details?id=app.rucja.io',
        appstoreUri: 'https://apps.apple.com/in/app/rucja/id6748079206',
      ),
      ProjectModel(
        title: "InteriorChowk",
        desc:
            "Interior chowk: The best architects and interior designers shopping platform without any brokerage fees",
        image:
            'https://testharhtzkiftxpazyx.supabase.co/storage/v1/object/public/hcdev/ic.png',
        tags: ['Flutter', 'Dart', 'Provider', 'Razorpay', 'Google Maps'],
        playstoreUri:
            'https://play.google.com/store/apps/details?id=com.interiorchowk.app',
        appstoreUri: 'https://apps.apple.com/in/app/interiorchowk/id6554003290',
      ),
      ProjectModel(
        title: "YumFresh",
        desc:
            "Your Ultimate Destination for Fresh Fish, Chicken & Mutton Delivery in Kolkata & Howrah",
        image:
            'https://testharhtzkiftxpazyx.supabase.co/storage/v1/object/public/hcdev/yumfresh.png',
        tags: ['Flutter', 'Dart', 'Provider', 'Razorpay', 'Google Maps'],
        playstoreUri:
            'https://play.google.com/store/apps/details?id=com.yumfresh.app',
      ),
      ProjectModel(
        title: "CucuApp",
        desc:
            "The CucuApp is developed to provide farmers and agricultural stakeholders with critical, evidence-based information on effective cucumber farming practices.",
        image:
            'https://testharhtzkiftxpazyx.supabase.co/storage/v1/object/public/hcdev/cucuapp.png',
        tags: ['Flutter', 'Dart', 'Getx', 'Localizations'],
        playstoreUri:
            'https://play.google.com/store/apps/details?id=com.cucuapp&hl=en_IN',
      ),
      ProjectModel(
        title: "SME World Asia",
        desc:
            "The app provides news, insights, and practical guidance to support the development of SMEs across India and beyond.",
        image:
            'https://testharhtzkiftxpazyx.supabase.co/storage/v1/object/public/hcdev/sme.png',
        tags: ['Flutter', 'Dart', 'Webview'],
        playstoreUri:
            'https://play.google.com/store/apps/details?id=smeworld.news.app',
      ),
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: constraints.maxWidth > 800 ? 3 : 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: constraints.maxWidth > 800 ? 0.9 : 0.8,
          ),
          itemCount: projects.length,
          itemBuilder: (context, index) {
            return ProjectCard(project: projects[index]);
          },
        );
      },
    );
  }
}

class ProjectCard extends StatelessWidget {
  final ProjectModel project;
  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.black.withValues(alpha: 0.2)
                : Colors.black.withValues(alpha: 0.08),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.7,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: Image.network(
                project.image,
                width: double.infinity,
                cacheHeight: 500,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    project.desc,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: isDark ? Colors.grey[400] : Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Wrap(
                    spacing: 4,
                    runSpacing: 6,
                    children: [
                      for (var item in project.tags) TagChip(label: item),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      project.playstoreUri != null
                          ? StoreButton(
                              icon: FontAwesomeIcons.googlePlay,
                              label: "Play Store",
                              onTap: () {
                                launchUrl(Uri.parse(project.playstoreUri!));
                              },
                            )
                          : SizedBox.shrink(),
                      const SizedBox(width: 10),
                      project.appstoreUri != null
                          ? StoreButton(
                              icon: FontAwesomeIcons.appStore,
                              label: "App Store",
                              onTap: () {
                                launchUrl(Uri.parse(project.appstoreUri!));
                              },
                            )
                          : SizedBox.shrink(),
                    ],
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

class ProjectModel {
  final String title;
  final String desc;
  final String image;
  final List<String> tags;
  final String? playstoreUri;
  final String? appstoreUri;

  ProjectModel({
    required this.title,
    required this.desc,
    required this.image,
    required this.tags,
    this.playstoreUri,
    this.appstoreUri,
  });
}

class TagChip extends StatelessWidget {
  final String label;
  const TagChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: isDark ? Colors.white24 : Colors.black12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(label, style: const TextStyle(fontSize: 10)),
    );
  }
}

class StoreButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final GestureTapCallback onTap;
  const StoreButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(color: isDark ? Colors.white24 : Colors.black12),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            FaIcon(
              icon,
              size: 12,
              color: isDark ? Colors.white : Colors.black87,
            ),
            const SizedBox(width: 5),
            Text(label, style: const TextStyle(fontSize: 10)),
          ],
        ),
      ),
    );
  }
}
