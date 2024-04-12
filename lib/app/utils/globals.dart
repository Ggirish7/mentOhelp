import 'package:flutter/material.dart';

final GlobalKey<ScaffoldMessengerState> snackbarKey =
    GlobalKey<ScaffoldMessengerState>();

final GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

SnackBar getSnackBar(String text) {
  return SnackBar(
    content: Text(text),
    duration: const Duration(seconds: 1),
    action: SnackBarAction(
      label: "Dismiss",
      onPressed: () => snackbarKey.currentState!.hideCurrentSnackBar(),
    ),
  );
}
