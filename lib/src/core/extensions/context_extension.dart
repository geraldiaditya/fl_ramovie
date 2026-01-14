import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  void showSnackBar({
    required String title,
    required String message,
    bool? isSuccess,
  }) {
    final tx = txTheme();
    final c = cs();
    isSuccess ??= true;
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: tx.titleLarge),
            Text(message, style: tx.bodyMedium),
          ],
        ),
        backgroundColor: isSuccess ? c.primary : c.error,
      ),
    );
  }

  TextTheme txTheme() => TextTheme.of(this);

  ThemeData theme() => Theme.of(this);

  ColorScheme cs() => theme().colorScheme;

  Color secondary() => theme().colorScheme.secondary;

  Color cardColor() => theme().cardColor;

  Color surfaceContainer() => cs().surfaceContainer;

  Color surface() => cs().surface;
}
