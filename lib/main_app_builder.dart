import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:rr_flutter3/app_builder.dart';
import 'package:rr_flutter3/dark_theme_screen.dart';

class MainAppBuilder implements AppBuilder {
  @override
  Widget buildApp(savedModeTheme) {
    return AdaptiveTheme(
      light: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue,
      ),
      dark: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.blue,
      ),
      initial: savedModeTheme ?? AdaptiveThemeMode.dark,
      builder: (theme, darkTheme) => MaterialApp(
        title: "My Dark Theme App",
        theme: theme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: DarkThemeScreen(),
      ),
    );
  }
}
