import 'package:flutter/material.dart';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:get_fit_new/constants.dart';

const appId = "ca-app-pub-3940256099942544~3347511713";

late AdmobInterstitial interstitialAd;

// MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
//   childDirected: false, // or MobileAdGender.female, MobileAdGender.unknown
//   testDevices: <String>[], // Android emulators are considered test devices
// );

class IndividualMealPlanScreen extends StatelessWidget {
  final String imageSource;
  final String mealDescriptionSource;

  IndividualMealPlanScreen(
      {required this.imageSource, required this.mealDescriptionSource});

  static const String id = 'individual_meal_plan';

  @override
  Widget build(BuildContext context) {
    interstitialAd = myInterstitialAd()..load();

    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Plan'),
        backgroundColor: Colors.blue,
        leading: Container(
          child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                if (interstitialAd.isLoaded != null) {
                  interstitialAd..show();
                }
                Navigator.pop(context);
                //print('Pressed');
              }),

        ),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              MealImage(
                mealImage: imageSource,
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
              MealPlanDescription(
                mealDescription: mealDescriptionSource,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MealImage extends StatelessWidget {
  final String mealImage;

  MealImage({required this.mealImage});

  @override
  Widget build(BuildContext context) {

    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 && MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 599;

    return Container(
      margin: EdgeInsets.only(top: sw900 ? 30 :  10.0, bottom: 20.0),
      height: sw600 ? 200.0 : sw900 ? 280 :  150.0,
      child: Image.asset(mealImage),
    );
  }
}

class MealPlanDescription extends StatelessWidget {
  final String mealDescription;

  MealPlanDescription({required this.mealDescription});

  @override
  Widget build(BuildContext context) {
    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;

    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          child: Text(
            mealDescription,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Lato',
              fontSize: sw600 ? 28.0 : sw900 ? 34 :  20.0,
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
          print('IndiMealPlan: Ad is loaded');
        }
      });
}
