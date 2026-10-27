import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsGrid extends StatelessWidget {
  const ProjectsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      ProjectModel(
        title: "Fomo Corp",
        imageAsset: 'assets/fomo-corp-cover.png',
        desc:
            "Completed development of a B2B mobility platform for corporate cab operations and business travel workflows, built with Flutter and Dart.",
        tags: [
          'Flutter',
          'Dart',
          'Riverpod',
          'B2B',
          'Booking',
          'Maps',
          'Enterprise',
        ],
        links: const [
          ProjectLink(
            label: 'Play Store',
            icon: FontAwesomeIcons.googlePlay,
            url: 'https://play.google.com/store/apps/details?id=com.fomo.corp',
          ),
          ProjectLink(
            label: 'App Store',
            icon: FontAwesomeIcons.appStore,
            url: 'https://apps.apple.com/in/app/fomo-corp/id6759895436',
          ),
        ],
        status: "Completed",
        coverColors: [Color(0xFF0F766E), Color(0xFF14B8A6)],
      ),
      ProjectModel(
        title: "Fomo Cabs",
        imageAsset: 'assets/fomo-cabs-cover.png',
        desc:
            "Completed development of a B2C cab-booking app with Flutter and Dart, focused on rider discovery, booking flows, and customer-friendly journeys.",
        tags: [
          'Flutter',
          'Dart',
          'Provider',
          'B2C',
          'Booking',
          'Maps',
          'Mobile UX',
        ],
        links: const [
          ProjectLink(
            label: 'Play Store',
            icon: FontAwesomeIcons.googlePlay,
            url: 'https://play.google.com/store/apps/details?id=com.fomo.cabs',
          ),
          ProjectLink(
            label: 'App Store',
            icon: FontAwesomeIcons.appStore,
            url: 'https://apps.apple.com/in/app/fomo-cabs/id6756609332',
          ),
        ],
        status: "Completed",
        coverColors: [Color(0xFFF97316), Color(0xFFFB923C)],
      ),
      ProjectModel(
        title: "Tastes2plate",
        downloads: '100K+ downloads',
        desc: "Tastes2Plate (t2p) - Online Intercity Food Delivery App.",
        imageUrl:
            'https://testharhtzkiftxpazyx.supabase.co/storage/v1/object/public/hcdev/t2p.png',
        tags: [
          'Flutter',
          'Dart',
          'GetX',
          'Razorpay',
          'Google Maps',
          'Responsive App',
        ],
        links: const [
          ProjectLink(
            label: 'Play Store',
            icon: FontAwesomeIcons.googlePlay,
            url:
                'https://play.google.com/store/apps/details?id=me.taste2plate.app.customer',
          ),
          ProjectLink(
            label: 'App Store',
            icon: FontAwesomeIcons.appStore,
            url: 'https://apps.apple.com/in/app/tastes2plate/id1568888741',
          ),
        ],
      ),
      ProjectModel(
        title: "RucJa",
        desc: "Health Monitor Application",
        imageUrl:
            'https://testharhtzkiftxpazyx.supabase.co/storage/v1/object/public/hcdev/rucja.png',
        tags: ['Flutter', 'Dart', 'Riverpod', 'Bluetooth'],
        links: const [
          ProjectLink(
            label: 'Play Store',
            icon: FontAwesomeIcons.googlePlay,
            url: 'https://play.google.com/store/apps/details?id=app.rucja.io',
          ),
          ProjectLink(
            label: 'App Store',
            icon: FontAwesomeIcons.appStore,
            url: 'https://apps.apple.com/in/app/rucja/id6748079206',
          ),
        ],
      ),
      ProjectModel(
        title: "InteriorChowk",
        downloads: '10K+ downloads',
        desc:
            "Interior chowk: The best architects and interior designers shopping platform without any brokerage fees",
        imageUrl:
            'https://testharhtzkiftxpazyx.supabase.co/storage/v1/object/public/hcdev/ic.png',
        tags: ['Flutter', 'Dart', 'Provider', 'Razorpay', 'Google Maps'],
        links: const [
          ProjectLink(
            label: 'Play Store',
            icon: FontAwesomeIcons.googlePlay,
            url:
                'https://play.google.com/store/apps/details?id=com.interiorchowk.app',
          ),
          ProjectLink(
            label: 'App Store',
            icon: FontAwesomeIcons.appStore,
            url: 'https://apps.apple.com/in/app/interiorchowk/id6554003290',
          ),
        ],
      ),
      ProjectModel(
        title: "YumFresh",
        desc:
            "Your Ultimate Destination for Fresh Fish, Chicken & Mutton Delivery in Kolkata & Howrah",
        imageUrl:
            'https://testharhtzkiftxpazyx.supabase.co/storage/v1/object/public/hcdev/yumfresh.png',
        tags: ['Flutter', 'Dart', 'Provider', 'Razorpay', 'Google Maps'],
        links: const [
          ProjectLink(
            label: 'Play Store',
            icon: FontAwesomeIcons.googlePlay,
            url:
                'https://play.google.com/store/apps/details?id=com.yumfresh.app',
          ),
        ],
      ),
      ProjectModel(
        title: "CucuApp",
        desc:
            "The CucuApp is developed to provide farmers and agricultural stakeholders with critical, evidence-based information on effective cucumber farming practices.",
        imageUrl:
            'https://testharhtzkiftxpazyx.supabase.co/storage/v1/object/public/hcdev/cucuapp.png',
        tags: ['Flutter', 'Dart', 'Getx', 'Localizations'],
        links: const [
          ProjectLink(
            label: 'Play Store',
            icon: FontAwesomeIcons.googlePlay,
            url:
                'https://play.google.com/store/apps/details?id=com.cucuapp&hl=en_IN',
          ),
        ],
      ),
      ProjectModel(
        title: "SME World Asia",
        desc:
            "The app provides news, insights, and practical guidance to support the development of SMEs across India and beyond.",
        imageUrl:
            'https://testharhtzkiftxpazyx.supabase.co/storage/v1/object/public/hcdev/sme.png',
        tags: ['Flutter', 'Dart', 'Webview'],
        links: const [
          ProjectLink(
            label: 'Play Store',
            icon: FontAwesomeIcons.googlePlay,
            url:
                'https://play.google.com/store/apps/details?id=smeworld.news.app',
          ),
        ],
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
            childAspectRatio: constraints.maxWidth > 800 ? 0.78 : 0.84,
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
              child: Stack(
                fit: StackFit.expand,
                children: [
                  project.imageAsset != null
                      ? Image.asset(
                          project.imageAsset!,
                          width: double.infinity,
                          cacheHeight: 500,
                          fit: project.imageFit,
                        )
                      : project.imageUrl != null
                      ? Image.network(
                          project.imageUrl!,
                          width: double.infinity,
                          cacheHeight: 500,
                          fit: project.imageFit,
                        )
                      : ProjectCover(
                          title: project.title,
                          status: project.status,
                          colors: project.coverColors,
                        ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          project.title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      if (project.downloads != null)
                        DownloadBadge(label: project.downloads!)
                      else if (project.status != null)
                        StatusChip(label: project.status!),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    project.desc,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: isDark ? Colors.grey[400] : Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 4,
                    runSpacing: 6,
                    children: [
                      for (var item in project.tags) TagChip(label: item),
                    ],
                  ),
                  const Spacer(),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      for (final link in project.links)
                        StoreButton(
                          icon: link.icon,
                          label: link.label,
                          onTap: () {
                            launchUrl(Uri.parse(link.url));
                          },
                        ),
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

class DownloadBadge extends StatelessWidget {
  final String label;
  const DownloadBadge({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 6),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFFE9A3), Color(0xFFFBBF24)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: const Color(0xFFFFF3C4)),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.12),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.download_rounded,
            size: 14,
            color: Color(0xFF422006),
          ),
          const SizedBox(width: 5),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF422006),
              fontSize: 10,
              fontWeight: FontWeight.w800,
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
  final String? imageUrl;
  final String? imageAsset;
  final BoxFit imageFit;
  final List<String> tags;
  final List<ProjectLink> links;
  final String? status;
  final String? downloads;
  final List<Color> coverColors;

  ProjectModel({
    required this.title,
    required this.desc,
    this.imageUrl,
    this.imageAsset,
    this.imageFit = BoxFit.cover,
    required this.tags,
    this.links = const [],
    this.status = "Completed",
    this.downloads,
    this.coverColors = const [Color(0xFF111827), Color(0xFF374151)],
  });
}

class ProjectLink {
  final String label;
  final dynamic icon;
  final String url;

  const ProjectLink({
    required this.label,
    required this.icon,
    required this.url,
  });
}

class ProjectCover extends StatelessWidget {
  final String title;
  final String? status;
  final List<Color> colors;

  const ProjectCover({
    super.key,
    required this.title,
    required this.status,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (status != null)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.16),
                borderRadius: BorderRadius.circular(999),
                border: Border.all(color: Colors.white24),
              ),
              child: Text(
                status!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 4,
            width: 72,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.85),
              borderRadius: BorderRadius.circular(999),
            ),
          ),
        ],
      ),
    );
  }
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

class StatusChip extends StatelessWidget {
  final String label;

  const StatusChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Theme.of(
          context,
        ).primaryColor.withValues(alpha: isDark ? 0.2 : 0.12),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: isDark ? Colors.white : Colors.black87,
        ),
      ),
    );
  }
}

class StoreButton extends StatelessWidget {
  final dynamic icon;
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
          mainAxisSize: MainAxisSize.min,
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
