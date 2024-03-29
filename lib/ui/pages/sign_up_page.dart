import 'package:flutter/material.dart';
import 'package:trashy_app/shared/theme.dart';
import 'package:trashy_app/ui/widgets/custom_button.dart';
import 'package:trashy_app/ui/widgets/custom_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  Widget heading() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 6, left: 10),
          child: Text(
            'TRASHY',
            style: greyFont.copyWith(
              fontWeight: extraBold,
              fontSize: 36,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 28, left: 15),
              width: 176,
              height: 265,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/icon_contract.png'),
              )),
            ),
          ],
        )
      ],
    );
  }

  Widget loginSection(BuildContext context) {
    Widget nameInput() => CustomTextFormField(title: 'Name');
    Widget usernameInput() => CustomTextFormField(title: 'Username');
    Widget passwordInput() => CustomTextFormField(
          title: 'Password',
          obscureText: true,
        );

    return Container(
      margin: EdgeInsets.only(top: 262),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 54),
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        color: kDarkGreyColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28), topRight: Radius.circular(28)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign Up',
            style: greenFont.copyWith(fontSize: 36, fontWeight: bold),
          ),
          SizedBox(
            height: 25,
          ),
          nameInput(),
          usernameInput(),
          passwordInput(),
          SizedBox(
            height: 35,
          ),
          CustomButton(
            text: 'Join',
            onPressed: () {},
            width: 123,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightCreamColor,
      body: SafeArea(
          child: Container(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              heading(),
              loginSection(context),
            ],
          ),
        ),
      )),
    );
  }
}
