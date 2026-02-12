import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class BasicLogger {
  // Keep logger instance
  final Logger logger = Logger(
    // Optional: Configure logger further if needed (printers, etc.)
    printer: PrettyPrinter(
      methodCount: 1, // Display fewer methods in stack trace for console
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
    ),
  );

  // Trace, Debug, Info, Warning remain the same (only log if kDebugMode)
  void trace(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      // Using just kDebugMode is more idiomatic
      logger.t(message, time: time, error: error, stackTrace: stackTrace);
    }
  }

  void debug(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      logger.d(message, time: time, error: error, stackTrace: stackTrace);
    }
  }

  void info(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      logger.i(message, time: time, error: error, stackTrace: stackTrace);
    }
  }

  void warning(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      logger.w(message, time: time, error: error, stackTrace: stackTrace);
    }
  }

  /// Logs an error message
  void error(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      logger.e(message, time: time, error: error, stackTrace: stackTrace);
    } else {}
  }

  void fatal(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      logger.f(message, time: time, error: error, stackTrace: stackTrace);
    }
  }
}

SnackBar errorSnackBar(BuildContext context, String message) {
  return SnackBar(
    backgroundColor: Theme.of(context).colorScheme.error,
    content: Text(
      message,
      style: TextStyle(color: Theme.of(context).colorScheme.onError),
    ),
  );
}

SnackBar confirmationSnackbar(BuildContext context, String message) {
  return SnackBar(
    backgroundColor: Theme.of(context).colorScheme.primary,
    content: Text(
      message,
      style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
    ),
  );
}
