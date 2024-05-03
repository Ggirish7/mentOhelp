import 'package:flutter/material.dart';
import 'package:ment_o_help/app/controllers/firebase_authentication_handler.dart';
import 'package:ment_o_help/app/utils/widgets/filled_action_button.dart';
import 'package:ment_o_help/core/app_colors.dart';

class LoginTestScreen extends StatelessWidget {
  const LoginTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: Col.appBackGround),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const Padding(
            //   padding: EdgeInsets.all(4),
            //   child: AutoSizeText(),
            // ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: FilledActionButton(
                  labelText: "LOG OUT",
                  onPressed: () => FireManager.accSignoutFirebase()),
            ),
          ],
        ),
      ),
    );
  }
}
