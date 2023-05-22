import 'package:admob_flutter/admob_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'constants.dart';

class customAdmob {

  AdRequest adRequest = AdRequest(
    keywords: <String>['flutterio', 'beautiful apps'],
    contentUrl: 'https://flutter.io',
    neighboringContentUrls: <String>[],
    nonPersonalizedAds: false,
  );


  AdmobBanner bannerAd() {
    AdmobBanner myBanner = AdmobBanner(
      adUnitId: kBannerAdId, //BannerAd.testAdUnitId ,
      adSize: AdmobBannerSize.BANNER,
      // key : targetingInfo,
      listener: (AdmobAdEvent  event,Map<String, dynamic>? args) {
        print("BannerAd event is $event");
      },

    );
    return myBanner;
  }

  AdmobInterstitial  interstitialAd() {
    AdmobInterstitial myInterstitial = AdmobInterstitial(
      adUnitId: kInterstitialAdId,//InterstitialAd.testAdUnitId,
      // targetingInfo: targetingInfo,
      listener: (AdmobAdEvent  event,Map<String, dynamic>? args) {
        print("InterstitialAd event is $event");
      },
    );
    return myInterstitial;
  }
}
