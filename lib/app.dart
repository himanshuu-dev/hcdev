// 1. Global Theme Notifier
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/home/home.dart';

final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.dark);

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, _) {
        return MaterialApp(
          title: 'Himanshu Flutter Developer Portfolio',
          debugShowCheckedModeBanner: false,
          themeMode: currentMode,
          theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: const Color(0xFF00796B), // Darker Teal for light mode
            scaffoldBackgroundColor: const Color(0xFFF5F5F5),
            useMaterial3: true,
            cardColor: Colors.white,
            shadowColor: Colors.black.withValues(alpha: 0.1),
            iconTheme: const IconThemeData(color: Colors.black87),
            textTheme: GoogleFonts.poppinsTextTheme(
              ThemeData.light().textTheme,
            ).apply(bodyColor: Colors.black87, displayColor: Colors.black87),
          ),
          // --- Dark Theme Definition ---
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: const Color(0xFF00E5FF), // Neon Teal for dark mode
            scaffoldBackgroundColor: const Color(0xFF1E1E24),
            useMaterial3: true,
            cardColor: const Color(0xFF2A2D36),
            shadowColor: const Color(0xFF00E5FF).withValues(alpha: 0.3),
            iconTheme: const IconThemeData(color: Colors.white),
            textTheme: GoogleFonts.poppinsTextTheme(
              ThemeData.dark().textTheme,
            ).apply(bodyColor: Colors.white, displayColor: Colors.white),
          ),
          home: const PortfolioHome(),
        );
      },
    );
  }
}
