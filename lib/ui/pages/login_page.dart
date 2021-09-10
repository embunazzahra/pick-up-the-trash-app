import 'package:flutter/material.dart';
import 'package:trashy_app/shared/theme.dart';
import 'package:trashy_app/ui/widgets/custom_button.dart';
import 'package:trashy_app/ui/widgets/custom_text_form_field.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  Widget appName() {
    return Container(
      margin: EdgeInsets.only(top: 6, left: 10),
      child: Text(
        'TRASHY',
        style: greyFont.copyWith(
          fontWeight: extraBold,
          fontSize: 36,
        ),
      ),
    );
  }

  Widget icon1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 323,
          height: 231,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/icon_highfive.png'),
          )),
        ),
      ],
    );
  }

  Widget loginSection(BuildContext context) {
    Widget usernameInput() => CustomTextFormField(title: 'Username');
    Widget passwordInput() => CustomTextFormField(
          title: 'Password',
          obscureText: true,
        );

    return Container(
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
            'Login',
            style: greenFont.copyWith(fontSize: 36, fontWeight: bold),
          ),
          SizedBox(
            height: 25,
          ),
          usernameInput(),
          passwordInput(),
          SizedBox(
            height: 42,
          ),
          CustomButton(
            text: 'Trashy',
            onPressed: () {},
            width: 123,
          ),
          SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sign-up-page');
              },
              child: Center(
                child: Text(
                  'Sign Up',
                  style: greenFont.copyWith(fontSize: 14, fontWeight: bold),
                ),
              )),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appName(),
              icon1(),
              loginSection(context),
            ],
          ),
        ),
      )),
    );
  }
}
