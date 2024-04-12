import 'package:flutter/material.dart';

class ArticleCards extends StatelessWidget {
  const ArticleCards({super.key});

  @override
  Widget build(BuildContext context) {
    var card = MediaQuery.of(context).size.width;
    return Card(
      margin: const EdgeInsets.only(top: 8, left: 0, right: 16),
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(6),
        width: card * 0.86,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: CircleAvatar(
                backgroundColor: Colors.purple,
                radius: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
