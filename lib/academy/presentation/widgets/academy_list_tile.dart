import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcademyListTile extends StatelessWidget {
  const AcademyListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.blue,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Title",
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Text(
                  "Subtitle",
                  style: GoogleFonts.roboto(
                      fontSize: 12, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "Description",
                  style: GoogleFonts.roboto(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                    child: Text(
                  "#1",
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
              ),
              Icon(
                Icons.bookmark,
                color: Colors.blue,
              ),
            ],
          )
        ],
      ),
    );
  }
}
