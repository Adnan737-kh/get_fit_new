import 'package:flutter/material.dart';
import 'package:get_fit_new/constants.dart';


class CreditsScreen extends StatelessWidget {
  static const String id = 'credits_screen';

  @override
  Widget build(BuildContext context) {

    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 && MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 599;
    var sh790to820 = MediaQuery.of(context).size.height > 790 && MediaQuery.of(context).size.height < 820;

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
          'Credits',
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Center(
              child: Text(
                'Credits',
                style: TextStyle(
                  fontSize: sw600 ? 35.0 : sw900 ? 45 : 30.0,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(kCredits, style: TextStyle(
              fontSize: sw600 ? 30 : sw900 ? 35 :  25.0,
              fontFamily: 'Lato',
            ),
            ),
          ),
        ],
      ),
    );
  }
}
