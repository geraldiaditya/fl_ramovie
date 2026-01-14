import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ra_movie/src/app.dart';

void main() {
  PlatformDispatcher.instance.onError = (error, stack) {
    // TODO: Add crash reporting (e.g., Sentry, Crashlytics)
    debugPrint('Global Error: $error');
    debugPrint('Stack Trace: $stack');
    return true;
  };

  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    // TODO: Log to crash reporting service
    debugPrint('Flutter Error: ${details.exception}');
  };

  runApp(ProviderScope(child: const RaMovieApp()));
}
