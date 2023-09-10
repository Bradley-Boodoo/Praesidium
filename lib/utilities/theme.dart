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
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 25, ),
            //Elevated Button Text
            labelLarge: GoogleFonts.roboto(fontWeight: FontWeight.w700)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: colorScheme.secondary,
            foregroundColor: colorScheme.background,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(9))),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
          const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          filled: true,
          fillColor: colorScheme.onPrimary,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colorScheme.surface,
        ),
        appBarTheme: AppBarTheme(
            centerTitle: false,
            backgroundColor: colorScheme.primary,
            titleTextStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black
            )
        )
    );
  }
}
