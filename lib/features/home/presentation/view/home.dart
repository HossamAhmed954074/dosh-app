import 'package:dosh_app/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: const Center(child: Text('Welcome to the Home Page!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Toggle the theme
          ref.read(themeProviderProvider.notifier).toggleTheme();
        },
        child: const Icon(Icons.brightness_4),
      ),
    );
  }
}
