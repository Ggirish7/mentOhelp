import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ment_o_help/app/controllers/firebase_authentication_handler.dart';
import 'package:ment_o_help/app/utils/globals.dart';

class ChatScreenController extends GetxController {
  final TextEditingController textController = TextEditingController();
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final message = "".obs;
  // final apiUrl = Uri.parse('http://10.0.2.2:5000/get?msg=$message');
  // final apiUrl = Uri.parse('http://192.168.1.38:5000/get?msg=$message');
  // final apiUrl = "http://192.168.1.38:5000/";
  final apiUrl = "http://192.168.206.39:5000/";

  @override
  void onInit() {
    firstResponse();
    super.onInit();
  }

  Future<void> sendMessage(String message, bool isUser) async {
    if (message.isNotEmpty) {
      await firestore
          .collection('users')
          .doc(FireManager.loggedInUser.uid)
          .collection('chats')
          .add({
        'text': message,
        'createdAt': DateTime.now(),
        'isUser': isUser,
      });
      textController.clear();
    }
  }

  Future<void> getResponse(String message) async {
    try {
      var uri = Uri.parse("${apiUrl}get?msg=$message");
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        sendMessage(response.body, false);
      } else {
        getSnackBar("Failed to fetch response");
      }
    } catch (e) {
      getSnackBar("Server Issue");
    }
  }

  Future<void> firstResponse() async {
    try {
      var uri = Uri.parse(apiUrl);
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        sendMessage(response.body, false);
      } else {
        getSnackBar("Failed to fetch response");
      }
    } catch (e) {
      getSnackBar("Server Issue");
    }
  }
}
