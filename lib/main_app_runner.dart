import 'package:flutter/material.dart';
import 'package:rr_flutter3/app_builder.dart';
import 'package:rr_flutter3/app_runner.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

class MainAppRunner implements AppRunner {
  @override
  Future<void> preloadData() async {
    WidgetsFlutterBinding.ensureInitialized();
  }

  Future<void> run(AppBuilder appBuilder) async {
    await preloadData();
    final savedThemeMode = await AdaptiveTheme.getThemeMode();
    runApp(appBuilder.buildApp(savedThemeMode));
  }
}
