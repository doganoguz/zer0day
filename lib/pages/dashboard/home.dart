import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:getwidget/components/carousel/gf_items_carousel.dart';

import 'package:iconsax/iconsax.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/services.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:zer0day/constant/color.dart';
import 'package:zer0day/model/article.dart';
import 'package:zer0day/utils/api.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

final List<String> imageList = [
  "http://www.anadoluefes.com.tr/Admin/images/ContentImage/nft-dijital-sanat.jpg",
  "https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/in/wp-content/uploads/2022/03/monkey-g412399084_1280.jpg",
  "https://miro.medium.com/max/1400/1*wFuoaESuck8qKj3KXbPdfQ.jpeg",
  "https://lh3.googleusercontent.com/CPwmSh6RgnYVuFiGVy4Ck_VnzDaXzvZ4cZ4mmhpcGuiC3_FK0LQG-Kr6BQAXfyp4PQv1gjoPIDUTtVvnPsOgEn7K_J19-vS6IdEkEw=w600",
  "https://lh3.googleusercontent.com/4BcrkIqtAEJuZRKMWt-W_YgDykbaJ_MtWkzCeSqV4Pvyog_Du2GL8BJaexzERUcph1ZvBLiK16Fdezn59J0_ayi8hncsXZbDYf0A=w600",
  "http://www.anadoluefes.com.tr/Admin/images/ContentImage/nft-dijital-sanat.jpg",
  "https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/in/wp-content/uploads/2022/03/monkey-g412399084_1280.jpg",
  "https://miro.medium.com/max/1400/1*wFuoaESuck8qKj3KXbPdfQ.jpeg",
];

final _advancedDrawerController = AdvancedDrawerController();
List<Articles>? articles = [];
const double iconSize = 18;

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    NewsService.getNews().then((value) {
      setState(() {
        articles = value;
      });
    });
    _hideMenu();
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: NowUIColors.anacolor,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: NowUIColors.anasari,
            blurRadius: 19.0,
            spreadRadius: 8.0,
            offset: Offset(-2.0, 0.0),
          ),
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AvatarGlow(
                    glowColor: NowUIColors.anasari,
                    endRadius: 70.0,
                    duration: Duration(milliseconds: 3000),
                    repeat: true,
                    showTwoGlows: true,
                    repeatPauseDuration: Duration(milliseconds: 100),
                    child: Material(
                      // Replace this child with your own
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: NowUIColors.anasari,
                        child: Image.asset(
                          'assets/images/menu.png',
                          height: 50,
                        ),
                        radius: 40.0,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white70,
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Iconsax.home),
                  title: Text(
                    'Home',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Iconsax.user),
                  title: Text(
                    'Profile',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                ExpansionTile(
                  leading: Icon(
                    Iconsax.candle,
                    color: NowUIColors.beyaz,
                  ),
                  title: Text(
                    'Live Signal',
                    style: TextStyle(
                        color: NowUIColors.beyaz,
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    color: NowUIColors.beyaz,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Btc',
                        style: TextStyle(
                            color: NowUIColors.beyaz,
                            fontSize: 14,
                            //fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                      trailing: Icon(Iconsax.bitcoin_convert),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'Eth',
                        style: TextStyle(
                            fontSize: 14,
                            //fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                      trailing: Icon(
                        Iconsax.candle,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'Other',
                        style: TextStyle(
                            fontSize: 14,
                            //fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                      trailing: Icon(
                        Iconsax.candle,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: Icon(
                    Iconsax.support,
                    color: NowUIColors.beyaz,
                  ),
                  title: Text(
                    'Support',
                    style: TextStyle(
                        color: NowUIColors.beyaz,
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    color: NowUIColors.beyaz,
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Test',
                        style: TextStyle(
                            color: NowUIColors.beyaz,
                            fontSize: 14,
                            //fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                      trailing: Icon(Iconsax.layer),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'Test',
                        style: TextStyle(
                            fontSize: 14,
                            //fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                      trailing: Icon(Iconsax.task),
                      onTap: () {},
                    ),
                  ],
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Iconsax.setting),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Iconsax.logout),
                  title: Text(
                    'Log Out',
                    style: TextStyle(
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            titleSpacing: 10.0,
            backgroundColor: NowUIColors.anacolor,
            leading: new IconButton(
              icon: new Icon(Iconsax.flash),
              onPressed: () {
                _handleMenuButtonPressed();
              },
            ),
            actions: <Widget>[],
            centerTitle: true,
            title: new Text(
              "Akış",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
              ),
            )),
        backgroundColor: NowUIColors.anacolor,
        body: Center(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: articles!.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          articles![index].urlToImage ??
                              'https://i0.wp.com/designermenus.com.au/wp-content/uploads/2016/02/icon-None.png?w=300&ssl=1',
                        ),
                        ListTile(
                          leading: Icon(Icons.arrow_drop_down_circle),
                          title: Text(articles![index].title ?? ''),
                          subtitle: Text(articles![index].author ?? ''),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(articles![index].description ?? ''),
                        ),
                        Container(
                          height: 35.0,
                          width: 255.0,
                          child: OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                              primary: NowUIColors.anacolor,
                              backgroundColor: NowUIColors.anacolor,
                              side: BorderSide(
                                  color: NowUIColors.black, width: 2),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                            ),
                            label: Text('Devamını Oku',
                                style: TextStyle(
                                  color: NowUIColors.beyaz,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                )),
                            icon: Icon(Icons.keyboard_arrow_right,
                                size: iconSize, color: NowUIColors.black),
                            onPressed: () async {
                              await launch(articles![index].url ?? '');
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  );
                })),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }

  void _hideMenu() {
    _advancedDrawerController.hideDrawer();
  }
}
