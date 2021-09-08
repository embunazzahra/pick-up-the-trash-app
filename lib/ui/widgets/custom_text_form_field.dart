import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;

  final bool obscureText;

  const CustomTextFormField({
    Key? key,
    required this.title,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: lightCreamFont.copyWith(fontSize: 18, fontWeight: bold),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            height: 40,
            child: TextFormField(
              style: greyFont.copyWith(fontSize: 20, fontWeight: bold),
              cursorColor: kDarkGreyColor,
              obscureText: obscureText,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  filled: true,
                  fillColor: kCreamColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(formFieldRadius),
                      borderSide: BorderSide(color: kCreamColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(formFieldRadius),
                      borderSide: BorderSide(color: kGreenColor))),
            ),
          )
        ],
      ),
    );
  }
}
