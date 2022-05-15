
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:getwidget/components/carousel/gf_items_carousel.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:iconsax/iconsax.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/services.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:zer0day/constant/color.dart';

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

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    _hideMenu();
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: NowUIColors.homeclr,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: NowUIColors.yesilkoyu,
            blurRadius: 20.0,
            spreadRadius: 10.0,
            offset: Offset(-3.0, 0.0),
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
                    glowColor: NowUIColors.yesilkoyu,
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
                        backgroundColor: Colors.grey[100],
                        child: Image.asset(
                          'assets/imgs/menu.png',
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
                  onTap: () {

                  },
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
                  onTap: () {

                  },
                  leading: Icon(Iconsax.home),
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
                  onTap: () {

                  },
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
            backgroundColor: NowUIColors.statusbar,
            leading: new IconButton(
              icon: new Icon(Iconsax.flash),
              onPressed: () {
                _handleMenuButtonPressed();
              },
            ),
            actions: <Widget>[

            ],
            centerTitle: true,
            title: new Text(
              "Dashboard",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )),
        backgroundColor: NowUIColors.homeclr,
        body: SingleChildScrollView(
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  alignment: Alignment.centerLeft,
                  child: Text("✨\u200d Highlights",
                      style: TextStyle(
                        color: NowUIColors.acikyesil,
                        fontSize: 15,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                GFItemsCarousel(
                  rowCount: 3,
                  children: imageList.map(
                    (url) {
                      return Container(
                        margin: EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          child: Image.network(url,
                              fit: BoxFit.cover, width: 1000.0),
                        ),
                      );
                    },
                  ).toList(),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Flexible(
                      child: TextScroll(
                        '🔥\u200d Pre-Sale Token Review and Buy Now | 🎁\u200d DogiCoin is Airdropping 10 Trade Tokens to Their Community Members. | ⚡\u200d No Hidden Fees. 24/7 Support. Try it Now! |',
                        style: TextStyle(
                          color: NowUIColors.anasite,
                          fontSize: 13,
                        ),
                        velocity: Velocity(pixelsPerSecond: Offset(40, 0)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  alignment: Alignment.centerRight,
                  child: new GestureDetector(
                    onTap: () {

                    },
                    child:
                        new Text("🔥\u200d Pre-Sale Token Review and Buy Now ",
                            style: TextStyle(
                              color: NowUIColors.acikyesil,
                              fontSize: 13,
                            )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CupertinoButton(
                      child: Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/imgs/manager.png"),
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: NowUIColors.statusbar),
                        child: Container(
                          padding: new EdgeInsets.only(top: 125.0),
                          child: Text(
                            "Miner",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: NowUIColors.homeclr,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      onPressed: () {

                      },
                    ),

                  ],
                ),

              ],
            ),
          ),
        ),
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