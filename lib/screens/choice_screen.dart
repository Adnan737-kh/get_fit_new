import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_fit_new/screens/InfoScreen.dart';
import 'package:get_fit_new/with_equipment/withequipment_screen.dart';
import 'package:get_fit_new/without_equipment/without_equipment_screen.dart';
import 'package:get_fit_new/constants.dart';
import 'package:admob_flutter/admob_flutter.dart';

import '../customAdmob.dart';

//const appId = "ca-app-pub-3940256099942544~3347511713";

class ChoiceScreen extends StatefulWidget {
  static const String id = 'choice_screen';

  @override
  _ChoiceScreenState createState() => _ChoiceScreenState();
}

class _ChoiceScreenState extends State<ChoiceScreen> {
  static const String id = 'choice_screen';

  customAdmob mycutomadmob = customAdmob();
  var bannerad;

  showBannerAd() {
    bannerad = mycutomadmob.bannerAd();

    bannerad
      ..load()
      ..show(
        anchorOffset: 60.0,
        horizontalCenterOffset: 10.0,
      );
  }

  showInterstitialAd() {
    AdmobInterstitial interstitialAd = mycutomadmob.interstitialAd();

    interstitialAd.load();

    interstitialAd.show();
  }


  @override
  void dispose() {
    bannerad?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var sw600 = MediaQuery.of(context).size.width >= 600 &&
    //     MediaQuery.of(context).size.width < 880;
    // var sw900 = MediaQuery.of(context).size.width >= 890;
    // var sw400to580 = MediaQuery.of(context).size.width >= 401 &&
    //     MediaQuery.of(context).size.width < 580;
    // var sw320to400 = MediaQuery.of(context).size.width > 320 &&
    //     MediaQuery.of(context).size.width < 400;

   print('Width is ${MediaQuery.of(context).size.width}');
   Admob.initialize();
   if (bannerad == null) {
      setState(() {
        showBannerAd();
        print("Debug tag\n\n inside if statement");
      });
    } else {
      showBannerAd();
      print("Debug tag\n\n inside else statement");
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GET FIT',
          style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.white,
              fontSize: 25.0,
              fontFamily: 'Inter'),
        ),
        // centerTitle: true,
        backgroundColor: Color(0xFF46CAB6),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/infoIcon.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoScreen()),
                );
              },
              child: Text(''),
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFF40C1B0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width / 10,
                  // ),
                  // SizedBox(
                  //   width: 0.0,
                  //   height: MediaQuery.of(context).size.height / 6,
                  // ),


                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17.0),
                    child: Text(
                      'CHOOSE A WOROUT',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 25.0,
                          fontFamily: 'Inter'),
                    ),
                  ),
                  ChoiseButton(
                    imgText: 'images/withequipment_button_new.png',
                    onPressed: () {
                      //showInterstatialAd();
                      // if (bannerad != null) {
                      //   // bannerad.dispose();
                      //   bannerad = null;
                      // }
                      Navigator.pushNamed(context, WithEquipmentScreen.id);
                    },
                  ),

                  ChoiseButton(imgText: 'images/withoutequipment_button_new.png',
                    onPressed: () {
                      //showInterstatialAd();
                      // if (bannerad != null) {
                      //   // bannerad.dispose();
                      //   bannerad = null;
                      // }
                      Navigator.pushNamed(context, WithoutEquipmentScreen.id);
                    },),

                  // Expanded(
                  //   child: GestureDetector(
                  //     child: Container(
                  //       // margin: EdgeInsets.only(left: sw900 ? 20.0 : 0),
                  //       // height: sw320to400
                  //       //     ? 190.0
                  //       //     : sw600
                  //       //         ? 290.0
                  //       //         : sw900
                  //       //             ? 370.0
                  //       //             : 215.0,
                  //       // width: sw320to400 ? 160.0 : 195.0,
                  //       decoration: BoxDecoration(
                  //           image: DecorationImage(
                  //         image: AssetImage(
                  //             'images/withequipment_button_new.png'),
                  //         // fit: BoxFit.fill,
                  //       )),
                  //     ),
                  //     onTap: () {
                  //       //showInterstatialAd();
                  //       if (bannerad != null) {
                  //         // bannerad.dispose();
                  //         bannerad = null;
                  //       }
                  //       Navigator.pushNamed(context, WithEquipmentScreen.id);
                  //     },
                  //   ),
                  // ),
                  // Expanded(
                  //   child: GestureDetector(
                  //     child: Container(
                  //
                  //       // margin: EdgeInsets.only(right: sw900 ? 20.0 : 0),
                  //       // height: sw320to400
                  //       //     ? 190.0
                  //       //     : sw600
                  //       //         ? 290.0
                  //       //         : sw900
                  //       //             ? 370.0
                  //       //             : sw400to580
                  //       //                 ? 210
                  //       //                 : 215.0,
                  //       // width: sw320to400 ? 160.0 : 195.0,
                  //       decoration: BoxDecoration(
                  //           image: DecorationImage(
                  //         image: AssetImage(
                  //             'images/withoutequipment_button_new.png'),
                  //         // fit: BoxFit.fill,
                  //       )),
                  //     ),
                  //     onTap: () {
                  //       //showInterstatialAd();
                  //       if (bannerad != null) {
                  //         bannerad.dispose();
                  //         bannerad = null;
                  //       }
                  //       Navigator.pushNamed(
                  //           context, WithoutEquipmentScreen.id);
                  //     },
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width / 10,
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChoiseButton extends StatelessWidget {
  final String imgText;
  final VoidCallback onPressed;
  ChoiseButton({required this.imgText, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Image.asset(imgText),
        onTap: onPressed);
  }
}
