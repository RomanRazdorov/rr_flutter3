import 'package:flutter/material.dart';

class StatelessScreen extends StatelessWidget {
  const StatelessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              10,
              (index) => Container(
                height: 120,
                width: 120,
                color: Colors.primaries[index % Colors.primaries.length],
                child: const Center(
                  child: Text("Flutter Dev"),
                ),
              ),
            )),
      ),
    );
  }
}
