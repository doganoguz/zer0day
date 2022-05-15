// @dart=2.9
import 'package:flutter/material.dart';

import 'package:zer0day/pages/authentication/login.dart';
import 'package:zer0day/pages/authentication/password_reset.dart';
import 'package:zer0day/pages/authentication/sign_up.dart';
import 'package:zer0day/pages/welcome/on_boarding.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  void main() async {
    runApp(MyApp());

    WidgetsFlutterBinding.ensureInitialized();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'zer0day',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Montserrat-Regular'),
        initialRoute: '/onboarding',
        routes: <String, WidgetBuilder>{
          '/onboarding': (BuildContext context) => new OnboardingExample(),

          '/login': (BuildContext context) => new Login(),
          '/passwordreset': (BuildContext context) => new PasswordReset(),
          '/signup': (BuildContext context) => new SignUp(),
        });
  }
}
