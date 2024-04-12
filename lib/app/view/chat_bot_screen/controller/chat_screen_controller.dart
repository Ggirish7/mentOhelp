import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ChatScreenController extends GetxController {
  final TextEditingController controller = TextEditingController();
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Future<void> sendMessage(String message) async {
  //   if (message.isNotEmpty) {
  //     await firestore
  //         .collection('users')
  //         .document(widget.userId)
  //         .collection('chats')
  //         .add({
  //       'text': message,
  //       'createdAt': DateTime.now(),
  //     });
  //     controller.clear();
  //   }
  // }

  // Future<String> getResponse(String message) async {
  //   final apiUrl = Uri.parse('YOUR_API_URL');
  //   final response = await http.post(apiUrl, body: {'message': message});
  //   if (response.statusCode == 200) {
  //     final responseData = json.decode(response.body);
  //     return responseData['response'];
  //   } else {
  //     throw Exception('Failed to fetch response');
  //   }
  // }
// import 'package:dio/dio.dart';

  // final dio = Dio();

  // void getHttp() async {
  //   final response = await dio.get('https://dart.dev');
  //   print(response);
  // }

  Future<void> getResponse(String message) async {
    // final queryParameters = {
    //   'msg': message,
    // };
    print(message);
    final response =
        await http.get(Uri.parse('http://10.0.2.2:5000/get?msg=' + message));
    print("completed");
    print(response.body);
    // if (response.statusCode == 200) {
    //   print(response.data);
    // } else {
    //   throw Exception('Failed to fetch response');
    // }
  }
}
