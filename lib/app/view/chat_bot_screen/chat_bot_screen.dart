// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/view/chat_bot_screen/controller/chat_screen_controller.dart';
import 'package:ment_o_help/app/view/dashboard_screen/controller/dashboard_screen_controller.dart';
import 'package:ment_o_help/core/app_fonts.dart';

class ChatBotScreen extends StatelessWidget {
  const ChatBotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chatScreenController = Get.put(ChatScreenController());
    return Scaffold(
      backgroundColor: const Color(0xFF262235),
      appBar: buildAppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Expanded(
            //   child: StreamBuilder(
            //     stream: chatScreenController.firestore
            //         .collection('chats')
            //         .orderBy('createdAt', descending: true)
            //         .snapshots(),
            //     builder: (context, snapshot) {
            //       if (!snapshot.hasData) {
            //         return const Center(
            //           child: CircularProgressIndicator(),
            //         );
            //       }
            //       final List<DocumentSnapshot> documents =
            //           snapshot.data!.documents;
            //       return ListView(
            //         reverse: true,
            //         padding: const EdgeInsets.symmetric(
            //             vertical: 20.0, horizontal: 10.0),
            //         children: documents.map((doc) {
            //           return ChatMessage(
            //             text: doc['text'],
            //           );
            //         }).toList(),
            //       );
            //     },
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      // controller: _controller,
                      decoration: InputDecoration(
                          hintText: 'Enter your message...',
                          fillColor: Colors.red,
                          filled: true,
                          enabledBorder: UnderlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.red,
                    child: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                      // onPressed: () async {
                      //   String message = _controller.text.trim();
                      //   String response = await getResponse(message);
                      //   sendMessage(message);
                      //   sendMessage(response);
                      // },
                      onPressed: () async {
                        await chatScreenController.getResponse("hello");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

PreferredSizeWidget buildAppBar() {
  final dashBoardController = Get.put(DashBoardController());
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 16, 15, 21),
    elevation: 8,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_sharp,
        color: Colors.white,
      ),
      onPressed: () {
        dashBoardController.getSelectedIndex() == 1
            ? dashBoardController.onTapChange(0)
            : Get.back();
      },
    ),
    titleSpacing: 0,
    leadingWidth: 50,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage(
            "assets/images/carousal_images/carousal_image_3.png",
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              "Ment-O-Bud",
              style: AppFonts.chatBotScreenMainText,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                AutoSizeText(
                  "Active",
                  style: AppFonts.chatBotScreenSubText,
                ),
                SizedBox(
                  width: 5.spMax,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.green,
                  size: 8.spMax,
                )
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isMe = false;

  const ChatMessage({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: isMe ? Colors.lightBlueAccent : Colors.white,
      elevation: 10,
      borderRadius: BorderRadius.only(
        bottomLeft: isMe ? const Radius.circular(0) : const Radius.circular(10),
        bottomRight:
            isMe ? const Radius.circular(10) : const Radius.circular(0),
        topLeft: const Radius.circular(10),
        topRight: const Radius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
