import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorCards extends StatelessWidget {
  const DoctorCards({super.key, required this.text, this.imagePath});

  final String text;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 8, left: 0, right: 16),
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: CircleAvatar(
                backgroundColor: Colors.purple,
                // backgroundImage: AssetImage(imagePath),
                radius: 50,
              ),
            ),
            AutoSizeText(
              text,
              style:
                  GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            AutoSizeText(
              "Psychologist",
              style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[700]),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xFFEE805F),
                  size: 22,
                ),
                const SizedBox(
                  width: 2,
                ),
                AutoSizeText(
                  "4.7",
                  style: GoogleFonts.inter(
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFFEE805F),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
