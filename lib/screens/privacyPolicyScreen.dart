import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'choice_screen.dart';

class PrivacypolicyScreen extends StatefulWidget  {
  static const String id = "privacyscreen_id";

  @override
 _PrivacypolicyScreenState createState()  => _PrivacypolicyScreenState();
}

class _PrivacypolicyScreenState extends State<PrivacypolicyScreen>  {
  bool checkedValue = false;
  late bool userkey;
  late SharedPreferences _pref;
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _loadPref() async{
    _pref=await SharedPreferences.getInstance();
    _pref.setBool('k', false);

    userkey=_pref.getBool('k')!;
    _pref.commit();
  }


  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => ChoiceScreen()
    )
    );
  }


@override
  void initState() {
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    _loadPref();
    // if(userkey==true){
      startTime();
      return Scaffold(
        body: Center(
          child: Container(
            decoration:BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/splash-screenfor-android.png'),
                fit: BoxFit.cover
              )
            )
          ),
        ),
      );
    // }
    // else{
    // return Scaffold(
    //   body: SafeArea(
    //     child: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Text(
    //             "Get fit in 30 days",
    //             style: TextStyle(
    //                 fontWeight: FontWeight.bold,
    //                 fontSize: 30.0,
    //                 color: Colors.blue),
    //           ),
    //           Container(
    //             padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
    //             child: CircleAvatar(
    //               radius: MediaQuery.of(context).size.width * 0.25,
    //               child: Image.asset("images/circle-icon.png"),
    //             ),
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Checkbox(
    //                   value: checkedValue,
    //                   onChanged:(value) =>  (bool isChecked) {
    //                     setState(() {
    //                       checkedValue = isChecked;
    //                     });
    //                   }),
    //               Text(
    //                 "I have read",
    //                 style: TextStyle(fontWeight: FontWeight.bold),
    //               ),
    //               TextButton(
    //                 onPressed: () {
    //                   launchURL('https://sites.google.com/view/ksadtech/privacy-policy');
    //                 },
    //                 child: Text(
    //                   "Privacy Policy.",
    //                   style: TextStyle(color: Colors.blueAccent),
    //                 ),
    //               ),
    //             ],
    //           ),
    //           Container(
    //               child: checkedValue == true
    //                   ? Container(
    //                       margin: EdgeInsets.only(top: 20.0),
    //                       decoration: BoxDecoration(
    //                         color: Colors.blue,
    //                         borderRadius: BorderRadius.all(
    //                           Radius.circular(20.0),
    //                         ),
    //                       ),
    //                       child: TextButton(
    //                         onPressed: () {
    //                             _pref.setBool('k', true);
    //                             _pref.commit();
    //                           Navigator.pop(context);
    //                           Navigator.of(context).push(MaterialPageRoute(
    //                               builder: (context) => ChoiceScreen()));
    //
    //                         },
    //                         child: Text(
    //                           "I have read and agree to the privacy policy ",
    //                           style: TextStyle(
    //                             color: Colors.white,
    //                             fontWeight: FontWeight.bold,
    //                           ),
    //                         ),
    //                       ),
    //                     )
    //                   : SizedBox(
    //                       height: 10.0,
    //                     ))
    //         ],
    //       ),
    //     ),
    //   ),
    // );
    // }
  }
}
