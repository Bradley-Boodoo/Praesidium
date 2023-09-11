import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_schemes.g.dart';

@immutable
class PraesidiumTheme {
  final BuildContext context;
  const PraesidiumTheme(this.context);

  ThemeData toThemeData() {
    final colorScheme =
        colorSchemeFromXD; // hardcoding to light color scheme cuz app is not for dark mode atm
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: GoogleFonts.robotoTextTheme().copyWith(
          // Top of the page headings
          displaySmall: GoogleFonts.roboto(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 25,
          ),

          // Small Headings
          headlineSmall: GoogleFonts.roboto(
            color: colorScheme.background,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),

          // Medium Headings
          headlineMedium: GoogleFonts.roboto(
            color: colorScheme.background,
          ),

          //Elevated Button Text
          labelLarge: GoogleFonts.roboto(fontWeight: FontWeight.w700)),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: colorScheme.tertiary,
          foregroundColor: colorScheme.background,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
        ),
      ),
      // inputDecorationTheme: InputDecorationTheme(
      //   contentPadding:
      //       const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      //   filled: true,
      //   fillColor: colorScheme.onPrimary,
      //   border: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(12),
      //     borderSide: BorderSide.none,
      //   ),
      // ),

      // Icon
      iconTheme: IconThemeData(color: colorScheme.background),

      // Bottom Navbar
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.surface,
      ),

      // Appbar
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: colorScheme.background,
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: colorScheme.primary,
        ),
      ),

      // Navigation Rail
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: colorScheme.primary,

        // Icon
        unselectedIconTheme: IconThemeData(color: colorScheme.background),
        selectedIconTheme: IconThemeData(color: colorScheme.background),

        // Text
        selectedLabelTextStyle: TextStyle(color: colorScheme.tertiary),
        unselectedLabelTextStyle: TextStyle(color: colorScheme.background),
      ),

      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
