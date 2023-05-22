import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:get_fit_new/constants.dart';

import '../../customAdmob.dart';

late AdmobInterstitial interstitialAd;

// MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
//   keywords: <String>['Fitness App', 'beautiful apps', 'Get fit', 'Get Fit in 30 Days'],
//   childDirected: false, // or MobileAdGender.female, MobileAdGender.unknown
//   testDevices: <String>[], // Android emulators are considered test devices
// );

class ExerciseScreen extends StatelessWidget {
  static const String id = 'exercise_screen';

  customAdmob mycutomadmob = customAdmob();
  showInterstatialAd() {
    mycutomadmob.interstitialAd()
      ..load()
      ..show(
        // anchorType: AnchorType.bottom,
        // anchorOffset: 0.0,
        // horizontalCenterOffset: 0.0,
      );
  }

  final String imageSource;
  final String contentSource;
  final String exerciseName;
  final bool showAd;

  ExerciseScreen(
      {required this.imageSource,
      required this.contentSource,
      required this.exerciseName,
      required this.showAd});

  @override
  Widget build(BuildContext context) {
    if (showAd) {
      interstitialAd = myInterstitialAd()..load();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(exerciseName),
        backgroundColor: Colors.blue,
        leading: Container(
          height: 25.0,
          width: 25.0,
          child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {

                    Navigator.pop(context);
                    showInterstatialAd();

              }),

        ),
      ),
      body: Layout(
        imageSource: imageSource,
        contentSource: contentSource,
        exerciseName: exerciseName,
      ),
    );
  }
}

class Layout extends StatelessWidget {
  final String imageSource;
  final String contentSource;
  final String exerciseName;

  Layout(
      {required this.imageSource,
      required this.contentSource,
      required this.exerciseName});

  @override
  Widget build(BuildContext context) {
    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Text(
              'Tap on picture for better view.',
              style: TextStyle(
                color: Colors.blue,
                fontSize: sw600 ? 22.0 : sw900 ? 28 :  18.0,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          ImageSource(
            imageSource: imageSource,
            exerciseName: exerciseName,
          ),
          SizedBox(
            height: 3.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                color: Colors.black,
              ),
            ),
          ),
          ContentSource(
            contentSource: contentSource,
          ),
        ],
      ),
    );
  }
}

class ContentSource extends StatelessWidget {
  final String contentSource;

  ContentSource({required this.contentSource});

  @override
  Widget build(BuildContext context) {
    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 && MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 599;
    var sh790to820 = MediaQuery.of(context).size.height > 790 && MediaQuery.of(context).size.height < 820;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Text(
        contentSource,
        style: TextStyle(
          fontSize: sw600 ? 28 : sw900 ? 34.0 :  22.0 ,
          fontFamily: 'Lato',
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class ImageSource extends StatelessWidget {
  final String imageSource;
  final String exerciseName;

  ImageSource({required this.imageSource, required this.exerciseName});

  @override
  Widget build(BuildContext context) {

    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 && MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 599;
    var sh790to820 = MediaQuery.of(context).size.height > 790 && MediaQuery.of(context).size.height < 820;


    return Container(
      width: sw600 ? 405.0 : sw900 ? 450 :  sw320to380 ? 290.0 : 305.0,
      height: sw600 ? 380.0 : sw900 ? 450  : sw320to380 ? 260 : 285.0,
      child: GestureDetector(
        child: Image(
          image: AssetImage(imageSource),
          width: sw600 ? 400.0 : sw900 ? 445  :  sw320to380 ? 280 : 300.0,
          height: sw600 ? 380.0 : sw900 ? 445 : sw320to380 ? 260.0 : 280.0,
          alignment: Alignment.center,
        ),
        onTap: () {
          EasyDialog(
              topImage: AssetImage(imageSource),
              width: sw600 ? 450.0 : sw900 ? 580 :  sw320to380 ? 320 : 350.0,
              height: sw600 ? 530.0 : sw900 ? 650  :  sw320to380 ? 400.0 : 430.0,
              closeButton: true,
              title: Text(
                exerciseName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: sw900 ? 28 : 22.0,
                ),
              )).show(context);
        },
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
          print('ExerciseScreen: Ad is loaded');
        }
      });
}
