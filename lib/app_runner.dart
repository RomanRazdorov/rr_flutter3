import 'package:rr_flutter3/app_builder.dart';

abstract class AppRunner {
  Future<void> preloadData();

  Future<void> run(AppBuilder builder);
}
