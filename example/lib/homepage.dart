import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:temp_plugin/temp_plugin.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Plugin Testing')),
      body: const ImageViewer(),
    );
  }
}
