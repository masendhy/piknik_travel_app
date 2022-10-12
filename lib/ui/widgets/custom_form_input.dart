import 'package:flutter/material.dart';
import 'package:piknik/shared/theme.dart';

class CustomFormInput extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;

  CustomFormInput(
      {required this.title, required this.hintText, this.obscureText = false});

  //const FormInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(fontSize: 15, color: blackColor),
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: obscureText,
            cursorColor: blackColor,
            decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: blackColor))),
          )
        ],
      ),
    );
  }
}
