import 'package:flutter/material.dart';

final GlobalKey<ScaffoldMessengerState> snackbarKey =
    GlobalKey<ScaffoldMessengerState>();

final GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void getSnackBar(String text) {
  snackbarKey.currentState!.showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 1),
      action: SnackBarAction(
          label: "Dismiss",
          onPressed: () {
            snackbarKey.currentState!.hideCurrentSnackBar();
          }),
      content: Text(text),
    ),
  );
}
