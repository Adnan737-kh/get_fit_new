import 'package:flutter/material.dart';
import 'package:get_fit_new/screens/Credits.dart';
import 'package:get_fit_new/screens/Disclaimer.dart';
import 'package:get_fit_new/screens/HowToUse.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get_fit_new/constants.dart';
import 'dart:io' show Platform;

class InfoScreen extends StatefulWidget {
  static const String id = 'info_screen';

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  _launchURL() async {
    String url =
        'https://play.google.com/store/apps/details?id=${_packageInfo.packageName}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLiOS() async {
    String url =
        'https://itunes.apple.com/app/id$kIosAppID?action=write-review';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  share() async {
    await FlutterShare.share(
      title: 'Get fit in 30 days Challenge',
      text: 'Fitness Workout at home or Gym',
      linkUrl: 'https://itunes.apple.com/app/id$kIosAppID',
      chooserTitle: 'Share Using',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 10.0,
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
            'Info',
          ),
        ),
        body:Stack(children:[
          Container(
            color: Colors.blue,
          ),
          Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InfoItem(
                imageSource: 'images/use_app_button_2.png',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HowToUseScreen(),
                      ));
                },
              ),
              InfoItem(
                imageSource: 'images/credits_button.png',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreditsScreen(),
                      ));
                },
              ),
              InfoItem(
                imageSource: 'images/disclaimer_button.png',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DisclaimerScreen(),
                      ));
                },
              ),
              InfoItem(
                imageSource: 'images/rate_us_button_new.png',
                onTap: () {
                  Platform.isAndroid
                      ? _launchURL
                      : Platform.isIOS ? _launchURLiOS : AppBar();
                },
              ),
              InfoItem(
                imageSource: 'images/share_app_button_new.png',
                onTap: share,
              ),
            ],
          ),
        )]));
  }
}

class InfoItem extends StatelessWidget {
  InfoItem({required this.imageSource, required this.onTap});

  final String imageSource;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var sw600 = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 &&
        MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 &&
        MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 &&
        MediaQuery.of(context).size.width < 599;
    var sh790to820 = MediaQuery.of(context).size.height > 790 &&
        MediaQuery.of(context).size.height < 820;

    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(top: sw900 ? 10 : 0),
          width: MediaQuery.of(context).size.width - 80,
          height: sw600 ? 110 : sw900 ? 170 : 75.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageSource),
              fit: BoxFit.fill,
            ),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
