import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:rr_flutter3/stateless_example.dart';

class DarkThemeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DarkThemeScreenState();

  DarkThemeScreen({Key? key}) : super(key: key);
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dark Theme"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("demonstration of the adaptive theme"),
              const Text("use switch to change theme"),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Light'),
                  const SizedBox(
                    width: 10,
                  ),
                  Switch(
                    value: AdaptiveTheme.of(context).mode.isDark,
                    onChanged: (value) {
                      if (value) {
                        AdaptiveTheme.of(context).setDark();
                      } else {
                        AdaptiveTheme.of(context).setLight();
                      }
                    },
                  ),
                  const SizedBox(width: 10),
                  const Text('Dark'),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text("Stateless Screen"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StatelessScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
