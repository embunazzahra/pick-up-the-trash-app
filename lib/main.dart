import 'package:flutter/material.dart';
import 'package:trashy_app/ui/pages/sign_up_page.dart';

import 'ui/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LogInPage(),
        '/sign-up-page': (context) => SignUpPage(),
      },
    );
  }
}
