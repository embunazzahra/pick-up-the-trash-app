import 'package:flutter/material.dart';
import 'package:trashy_app/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final String text;
  final Function() onPressed;
  const CustomButton(
      {Key? key,
      this.width = double.infinity,
      required this.text,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 36,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kGreenColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: lightCreamFont.copyWith(fontSize: 18, fontWeight: bold),
        ),
      ),
    ));
  }
}
