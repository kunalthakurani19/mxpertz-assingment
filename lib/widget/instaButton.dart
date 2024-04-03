import 'package:app_design_mx/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstProfileButton extends StatelessWidget {
  final String text;
  final Function onPress;

  InstProfileButton({super.key, required this.text, required this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onPress ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)), border: Border.all(color: AppColors.grey, width: 1)),
          height: 30,
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 14, fontFamily: 'Sans', fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

class InstProfileText extends StatelessWidget {
  final String num;
  final String text;

  const InstProfileText({super.key, required this.num, required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          num,
          style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.bold), fontSize: 16),
        ),
        Text(
          text,
          style: TextStyle(fontFamily: 'Sans', fontSize: 15, color: Colors.black),
        )
      ],
    );
  }
}
