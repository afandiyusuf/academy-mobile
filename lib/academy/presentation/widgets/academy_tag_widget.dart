import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcademyTagWidget extends StatelessWidget {
  final bool isActive;

  const AcademyTagWidget({Key? key, this.isActive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color contentColor = Colors.blue;
    if (!isActive) {
      contentColor = Color(0xFFAFAFAF);
    }
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: contentColor.withOpacity(0.2),
          border: Border.all(color: contentColor),
          borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Text(
          "Terbaru",
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500, fontSize: 16, color: contentColor),
        ),
      ),
    );
  }
}
