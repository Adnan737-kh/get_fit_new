import 'package:flutter/material.dart';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:get_fit_new/constants.dart';

late AdmobInterstitial interstitialAd;

// MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
//   childDirected: false, // or MobileAdGender.female, MobileAdGender.unknown
//   testDevices: <String>[], // Android emulators are considered test devices
// );

class ThirtyDaysIndiMealPlan extends StatelessWidget {
  static const String id = 'thirtdays_indi_mealplan';

  final String imageSource;
  final String mealDescription;

  ThirtyDaysIndiMealPlan({required this.imageSource,required this.mealDescription});

  @override
  Widget build(BuildContext context) {
    interstitialAd = myInterstitialAd()..load();
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Plan'),
        backgroundColor: Colors.blue,
        leading: Container(
          height: 25,
          width: 25,
          child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                if (interstitialAd.isLoaded!= null) {
                  interstitialAd..show();
                  Navigator.pop(context);
                } else {
                  Navigator.pop(context);
                }
              }),

        ),
      ),
      body: Column(
        children: <Widget>[
          MealImage(
            imageSource: imageSource,
          ),
          SizedBox(
            height: 3.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                color: Colors.black,
              ),
            ),
          ),
          MealDescription(
            mealDescription: mealDescription,
          ),
        ],
      ),
    );
  }
}

class MealImage extends StatelessWidget {
  final String imageSource;

  MealImage({required this.imageSource});

  @override
  Widget build(BuildContext context) {

    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 && MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 599;

    return Container(
      height: sw600 ? 200.0 : sw900 ? 250 :  150.0,
      margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageSource),
        ),
      ),
    );
  }
}

class MealDescription extends StatelessWidget {
  final String mealDescription;

  MealDescription({required this.mealDescription});

  @override
  Widget build(BuildContext context) {

    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 && MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 599;

    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          child: Text(
            mealDescription,
            style: TextStyle(
              fontSize: sw600 ? 28.0 : sw900 ? 34 :  20.0,
              fontFamily: 'Lato'
            ),
          ),
        ),
      ),
    );
  }
}

AdmobInterstitial myInterstitialAd() {
  return AdmobInterstitial(
      adUnitId: kInterstitialAdId,
      // targetingInfo: targetingInfo,
      listener: (AdmobAdEvent event, Map<String, dynamic>? args) {
        if (event == AdmobAdEvent.failedToLoad) {
          interstitialAd..load();
        } else if (event == AdmobAdEvent.closed) {
          interstitialAd = myInterstitialAd()..load();
        } else if (event == AdmobAdEvent.loaded){
          print('OrangeIndiMealPlan: Ad is loaded');
        }
      });
}
