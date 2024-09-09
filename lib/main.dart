import 'package:rr_flutter3/main_app_builder.dart';
import 'package:rr_flutter3/main_app_runner.dart';

void main() {
  final runner = MainAppRunner();
  final builder = MainAppBuilder();
  runner.run(builder);
}
