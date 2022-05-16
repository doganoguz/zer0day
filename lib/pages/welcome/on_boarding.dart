import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:zer0day/constant/color.dart';
import 'package:zer0day/pages/dashboard/home.dart';

void main() => runApp(new OnBoarding());

class OnBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      //Add Route to the main Page.
      routes: {'/mainPage': (context) => Home()},
      title: 'Zer0Day',
      theme: ThemeData(primarySwatch: Colors.teal, fontFamily: 'Nunito'),
      home: OnBoarding(title: 'zer0day'),
    );
  }
}

class OnBoarding extends StatefulWidget {
  OnBoarding({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _OnBoardingState createState() => new _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  //Create a list of PageModel to be set on the onBoarding Screens.
  final pageList = [
    PageModel(
        color: NowUIColors.anacolor,
        heroImagePath: 'assets/images/1.png',
        title: Text('Sunucu Güvenliği',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontFamily: 'Nunito',
              fontSize: 27.0,
            )),
        body: Text('Sunucular için tüm güvenlik ve açık bulma yöntemleri.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Nunito',
              fontSize: 14.0,
            )),
        iconImagePath: 'assets/images/1.png'),
    PageModel(
        color: NowUIColors.anasari,
        heroImagePath: 'assets/images/2.png',
        title: Text('Veri Tabanı Güvenliği',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontFamily: 'Nunito',
              fontSize: 27.0,
            )),
        body: Text('Tüm veri tabanı açıkları ve kullanıcı zaafiyetleri.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            )),
        iconImagePath: 'assets/images/2.png'),
    PageModel(
      color: NowUIColors.anacolor,
      heroImagePath: 'assets/images/3.png',
      title: Text('Wi-Fi',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontFamily: 'Nunito',
            fontSize: 27.0,
          )),
      body: Text('Kablosuz ağlar için tüm hacking yöntemleri.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Nunito',
            fontSize: 14.0,
          )),
      iconImagePath: 'assets/images/3.png',
    ),
    PageModel(
      color: NowUIColors.anasari,
      heroImagePath: 'assets/images/5.png',
      title: Text('Tools',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'Nunito',
            color: Colors.white,
            fontSize: 27.0,
          )),
      body: Text('Tüm araçlar ve onlar hakkında bilgiler.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Nunito',
            fontSize: 14.0,
          )),
      iconImagePath: 'assets/images/5.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Pass pageList and the mainPage route.
      body: FancyOnBoarding(
        doneButtonText: "Başla",
        skipButtonText: "Geç",
        pageList: pageList,
        onDoneButtonPressed: () =>
            Navigator.of(context).pushReplacementNamed('/home'),
        onSkipButtonPressed: () =>
            Navigator.of(context).pushReplacementNamed('/home'),
      ),
    );
  }
}
