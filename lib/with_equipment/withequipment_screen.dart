import 'package:flutter/material.dart';
import 'package:get_fit_new/with_equipment/exercises/body_navigation_screen.dart';
import 'package:get_fit_new/with_equipment/meal/meal_plan.dart';
import 'workout_plan/workout_plan.dart';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:get_fit_new/constants.dart';

//const appId = "ca-app-pub-3940256099942544~3347511713";

late AdmobInterstitial interstitialAd;

// MobileAd targetingInfo = MobileAdTargetingInfo(
//   keywords: <String>['flutterio', 'beautiful apps'],
//   childDirected: false, // or MobileAdGender.female, MobileAdGender.unknown
//   testDevices: <String>[], // Android emulators are considered test devices
// );

AdmobBanner myBanner = AdmobBanner(
  // Replace the testAdUnitId with an ad unit id from the AdMob dash.
  // https://developers.google.com/admob/android/test-ads
  // https://developers.google.com/admob/ios/test-ads
  adUnitId: AdmobBanner.testAdUnitId,
  adSize: AdmobBannerSize.BANNER,
  // targetingInf: targetingInfo,
  listener: (AdmobAdEvent  event,Map<String, dynamic>? args) {
    print("BannerAd event is $event");
  },
);

class ResponsiveWidget {
  //Large screen is any screen whose width is more than 1200 pixels
  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }

//Small screen is any screen whose width is less than 800 pixels
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

//Medium screen is any screen whose width is less than 1200 pixels,
  //and more than 800 pixels
  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }
}
//InterstitialAd myInterstitial = InterstitialAd(
//  // Replace the testAdUnitId with an ad unit id from the AdMob dash.
//  // https://developers.google.com/admob/android/test-ads
//  // https://developers.google.com/admob/ios/test-ads
//  adUnitId: InterstitialAd.testAdUnitId,
//  targetingInfo: targetingInfo,
//  listener: (MobileAdEvent event) {
//    print("InterstitialAd event is $event");
//    if (event == MobileAdEvent.failedToLoad) {
//      myInterstitial..load();
//    } else if (event == MobileAdEvent.closed) {
//      myInterstitial = myInterstitial..load();
//    }
//  },
//);

class WithEquipmentScreen extends StatefulWidget {
  static const String id = 'withequipment_screen';

  @override
  _WithEquipmentScreenState createState() => _WithEquipmentScreenState();
}

class _WithEquipmentScreenState extends State<WithEquipmentScreen> {
  @override
  Widget build(BuildContext context) {

    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;

    print('Size is ' + MediaQuery.of(context).size.width.toString());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Container(
          height: 25.0,
          width: 25.0,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Navigator.pop(context),
          ),

        ),
        title: Text(
          'With Equipment',
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: WithEquipmentItems(
                    imageSource: 'images/exercisestab_btn.png',
                    destination: BodyNavigation.id,
                    showAd: false,
                  ),
                ),
                WithEquipmentItems(
                  imageSource: 'images/mealplantab_btn.png',
                  destination: MealPlanScreen.id,
                  showAd: true,
                ),
                WithEquipmentItems(
                  imageSource: 'images/workouttab_btn.png',
                  destination: WorkoutPlanScreen.id,
                  showAd: false,
                ),
                SizedBox(height: 100.0,)
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // FirebaseAdM.instance.initialize(appId: kAppId);
    interstitialAd = myInterstitialAd()..load();
    //myBanner..load()..show();
    super.initState();
  }
}

//class WithEquipmentScreen extends StatelessWidget {
//  static const String id = 'withequipment_screen';
//
//  @override
//  Widget build(BuildContext context) {
//    FirebaseAdMob.instance.initialize(appId: appId);
//    myBanner..load()..show();
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Color(0xFF3497DA),
//        title: Text(
//          'With Equipment',
//        ),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            WithEquipmentItems(
//              imageSource: 'images/exercisestab_btn.png',
//              destination: BodyNavigation.id,
//            ),
//            SizedBox(
//              height: 10.0,
//            ),
//            WithEquipmentItems(
//              imageSource: 'images/mealplantab_btn.png',
//              destination: MealPlanScreen.id,
//            ),
//            SizedBox(
//              height: 10.0,
//            ),
//            WithEquipmentItems(
//              imageSource: 'images/workouttab_btn.png',
//              destination: WorkoutPlanScreen.id,
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//
//}

class WithEquipmentItems extends StatelessWidget {
  final String imageSource;
  final String destination;
  final bool showAd;

  WithEquipmentItems(
      {required this.imageSource,
      required this.destination,
      required this.showAd});

  @override
  Widget build(BuildContext context) {

    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 && MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 599;

    if (sw600) {
      return GestureDetector(
          child: Container(
//            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
            width: MediaQuery.of(context).size.width - 40,
            height: 270.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageSource),
                fit: BoxFit.fill,
              ),
            ),
          ),
          onTap: () {
            if (interstitialAd.isLoaded != null && showAd){
              interstitialAd..show();
            }
            Navigator.pushNamed(context, destination);
          });
    } else if (sw900){
      return GestureDetector(
          child: Container(
//            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
            width: MediaQuery.of(context).size.width - 40,
            height: 350.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageSource),
                fit: BoxFit.fill,
              ),
            ),
          ),
          onTap: () {
            if (interstitialAd.isLoaded != null && showAd){
              interstitialAd..show();
            }
            Navigator.pushNamed(context, destination);
          });
    } else if (sw320to400) {
      return GestureDetector(
          child: Container(
            margin: EdgeInsets.only(right: 5.0, left: 5.0),
            width: MediaQuery.of(context).size.width - 20.0,
            height: 165.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageSource),
                fit: BoxFit.fill,
              ),
            ),
          ),
          onTap: () {
            if (interstitialAd.isLoaded != null && showAd){
              interstitialAd..show();
            }
            Navigator.pushNamed(context, destination);
          });
    } else if (sw400to590) {
      return GestureDetector(
          child: Container(
            margin: EdgeInsets.only(right: 5.0, left: 5.0),
            width: MediaQuery.of(context).size.width - 20.0,
            height: 195.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageSource),
                fit: BoxFit.fill,
              ),
            ),
          ),
          onTap: () {
            if (interstitialAd.isLoaded != null && showAd){
              interstitialAd..show();
            }
            Navigator.pushNamed(context, destination);
          });
    } else if (sw380to399) {
      return GestureDetector(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
            width: MediaQuery.of(context).size.width - 40.0,
            height: 115.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageSource),
                fit: BoxFit.fill,
              ),
            ),
          ),
          onTap: () {
            if (interstitialAd.isLoaded != null && showAd){
              interstitialAd..show();
            }
            Navigator.pushNamed(context, destination);
          });
    } else {
      return GestureDetector(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
            width: MediaQuery.of(context).size.width - 50.0,
            height: 105.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageSource),
                fit: BoxFit.fill,
              ),
            ),
          ),
          onTap: () {
            if (interstitialAd.isLoaded != null && showAd){
              interstitialAd..show();
            }
            Navigator.pushNamed(context, destination);
          });
    }
  }
}

AdmobInterstitial myInterstitialAd() {
  return AdmobInterstitial(
      adUnitId: kInterstitialAdId,
      // targetingInfo: targetingInfo,
      listener: (AdmobAdEvent event,Map<String, dynamic>? args) {
        if (event == AdmobAdEvent.failedToLoad) {
          interstitialAd..load();
        } else if (event == AdmobAdEvent.closed) {
          interstitialAd = myInterstitialAd()..load();
        } else if (event == AdmobAdEvent.loaded){
          print('Ad is loaded');
        }
      });
}
