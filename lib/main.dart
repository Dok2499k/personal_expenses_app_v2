import 'package:flutter/material.dart';
import 'package:personal_expenses_app_v2/widgets/expenses.dart';

var keyColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kdarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
    runApp(
      MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: kdarkColorScheme,
          cardTheme: const CardTheme().copyWith(
            color: kdarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: keyColorScheme.primaryContainer,
              foregroundColor: kdarkColorScheme.onPrimaryContainer,
            ),
          ),
        ),
        theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: keyColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: keyColorScheme.onPrimaryContainer,
            foregroundColor: keyColorScheme.primaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
            color: keyColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: keyColorScheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: keyColorScheme.onSecondaryContainer,
                  fontSize: 14,
                ),
              ),
        ),
        home: const Expenses(),
      ),
    );
}
