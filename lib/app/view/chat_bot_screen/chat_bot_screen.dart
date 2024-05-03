import 'package:auto_size_text/auto_size_text.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/controllers/firebase_authentication_handler.dart';
import 'package:ment_o_help/app/view/chat_bot_screen/controller/chat_screen_controller.dart';
import 'package:ment_o_help/app/view/dashboard_screen/controller/dashboard_screen_controller.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({super.key});

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  @override
  Widget build(BuildContext context) {
    final chatScreenController = Get.put(ChatScreenController());
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: Col.appBackGround,
          // image: const DecorationImage(
          //     image: AssetImage("assets/images/chatbg.png"),
          //     fit: BoxFit.fill,
          //     colorFilter: ColorFilter.srgbToLinearGamma()),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: StreamBuilder(
                  stream: chatScreenController.firestore
                      .collection('users')
                      .doc(FireManager.loggedInUser.uid)
                      .collection('chats')
                      .orderBy('createdAt', descending: true)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    final List<DocumentSnapshot> documents =
                        snapshot.data!.docs;
                    return ListView.builder(
                      itemCount: documents.length,
                      reverse: true,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 10.0),
                      itemBuilder: (context, index) {
                        final Map<String, dynamic> data =
                            documents[index].data() as Map<String, dynamic>;
                        return MessageBubble(
                            text: data['text'], isUser: data['isUser']);
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: chatScreenController.textController,
                        onChanged: (value) {
                          chatScreenController.message.value = value;
                        },
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Enter your message here...',
                          hintStyle: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[400],
                          ),
                          fillColor: const Color(0xFF43034A),
                          filled: true,
                          border: UnderlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: const Color(0xFF43034A),
                      child: IconButton(
                        icon: const Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        onPressed: () async {
                          chatScreenController.sendMessage(
                              chatScreenController.message.value, true);
                          await chatScreenController
                              .getResponse(chatScreenController.message.value);
                          chatScreenController.textController.clear();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget buildAppBar() {
  final dashBoardController = Get.put(DashBoardController());
  return AppBar(
    backgroundColor: const Color(0xFF110122),
    elevation: 8,
    leading: IconButton(
      icon: const Icon(
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

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    super.key,
    required this.text,
    required this.isUser,
  });
  final String text;
  final bool isUser;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BubbleSpecialThree(
            text: text,
            isSender: isUser,
            color: isUser ? const Color(0xFFEA4080) : const Color(0xFFEE805F),
            textStyle: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
