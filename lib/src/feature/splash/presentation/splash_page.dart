import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Center(child: CircularProgressIndicator())],
        ),
      ),
    );
  }
}
