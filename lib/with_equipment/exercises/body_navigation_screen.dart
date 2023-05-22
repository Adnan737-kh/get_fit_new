import 'package:flutter/material.dart';
import 'package:get_fit_new/with_equipment/exercises/chest_list.dart';
import 'package:get_fit_new/with_equipment/exercises/arms_list.dart';
import 'package:get_fit_new/with_equipment/exercises/stomach_list.dart';
import 'package:get_fit_new/with_equipment/exercises/hipsandthighs_list.dart';

class BodyNavigation extends StatelessWidget {
  static const String id = 'body_navigation';

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

    print('Size is ' + MediaQuery.of(context).size.height.toString());
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
            'Exercises',
          ),
        ),
        body: Container(
            color: Colors.white,
            child: Stack(children: [
              Container(
                margin: EdgeInsets.only(bottom: 40.0),
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("images/body_nav_background.png"),
                    fit: sw320to380
                        ? BoxFit.fill
                        : (sw400to590) && (sh790to820)
                            ? BoxFit.fill
                            : sw400to590
                                ? BoxFit.fill
                                : BoxFit.fill,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Stack(children: [
                    GestureDetector(
                        child: Container(
                          /* margin: EdgeInsets.only(
                          top: sw600
                              ? 270.0
                              : sw900
                                  ? 380
                                  : (sw400to590) || (sh790to820)
                                      ? 170.0
                                      : sw400to590
                                          ? 120
                                          : sw320to380
                                              ? 115
                                              : sw380to399
                                                  ? 150.0
                                                  : 100,
                          left: (sw400to590)
                              ? 190.0
                              : sw600
                                  ? 265
                                  : sw900
                                      ? 410
                                      : sw320to380
                                          ? 15
                                          : sw380to399
                                              ? 165
                                              : 5.0),*/
                          width: sw320to380
                              ? 110.0
                              : sw380to399
                                  ? 80.0
                                  : sw600
                                      ? 110
                                      : sw900
                                          ? 140
                                          : 90.0,
                          height: sw320to380
                              ? 45.0
                              : sw380to399
                                  ? 80.0
                                  : sw600
                                      ? 110
                                      : sw900
                                          ? 140
                                          : 90.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/chest_btn.png"),
                                fit: BoxFit.fill),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Chest',
                              textAlign: TextAlign.center,

                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, ChestListScreen.id);
                        }),
                    // Container(
                    //     margin: EdgeInsets.fromLTRB(29.0, 65.0, 0.0, 0.0),
                    //     child: Text('Chest'))
                  ]),
                  Stack(children: [
                    GestureDetector(
                        child: Container(
                          /*  margin: EdgeInsets.only(
                        top: sw600
                            ? 10.0
                            : sw900
                                ? 0
                                : (sw400to590) || (sh790to820)
                                    ? 0.0
                                    : sw400to590
                                        ? 00
                                        : sw320to380
                                            ? 50.0
                                            : sw380to399
                                                ? 0.0
                                                : 100,
                        left: (sw400to590)
                            ? 0.0
                            : sw600
                                ? 25
                                : sw320to380
                                    ? 15
                                    : 5.0,
                        right: sw600
                            ? 210.0
                            : sw900
                                ? 160
                                : 120.0,
                      ),*/
                          width: sw320to380
                              ? 110.0
                              : sw380to399
                                  ? 80.0
                                  : sw600
                                      ? 110
                                      : sw900
                                          ? 140
                                          : 90.0,
                          height: sw320to380
                              ? 45.0
                              : sw380to399
                                  ? 80.0
                                  : sw600
                                      ? 110
                                      : sw900
                                          ? 140
                                          : 90.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/chest_btn.png"),
                                fit: BoxFit.fill),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Arms',
                              textAlign: TextAlign.center,

                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, ArmsListScreen.id);
                        }),
                    // Container(
                    //     margin: EdgeInsets.fromLTRB(29.0, 65.0, 0.0, 0.0),
                    //     child: Text('Arms'))
                  ]),
                  Stack(children: [
                    GestureDetector(
                        child: Container(
                          /*  margin: EdgeInsets.only(
                          top: sw600
                              ? 0.0
                              : sw900
                                  ? 20
                                  : (sw400to590) && (sh790to820)
                                      ? 00.0
                                      : sw400to590
                                          ? 0
                                          : sw320to380
                                              ? 55
                                              : sw380to399
                                                  ? 0.0
                                                  : 100,
                          left: (sw400to590)
                              ? 210.0
                              : sw600
                                  ? 315
                                  : sw900
                                      ? 450
                                      : sw320to380
                                          ? 15
                                          : sw380to399
                                              ? 180.0
                                              : 5.0),*/
                          width: sw320to380
                              ? 110.0
                              : sw380to399
                                  ? 80.0
                                  : sw600
                                      ? 110
                                      : sw900
                                          ? 140
                                          : 90.0,
                          height: sw320to380
                              ? 45.0
                              : sw380to399
                                  ? 80.0
                                  : sw600
                                      ? 110
                                      : sw900
                                          ? 140
                                          : 90.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/chest_btn.png"),
                                fit: BoxFit.fill),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Stomach',
                              textAlign: TextAlign.center,

                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, StomachListScreen.id);
                        }),
                    // Container(
                    //     margin: EdgeInsets.fromLTRB(18.0, 60.0, 0.0, 0.0),
                    //     child: Text('Stomach'))
                  ]),
                  Stack(children: [
                    GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(
                              top: sw600
                                  ? 35.0
                                  : sw900
                                      ? 40
                                      : (sw400to590) && (sh790to820)
                                          ? 0.0
                                          : sw400to590
                                              ? 5
                                              : sw320to380
                                                  ? 48
                                                  : sw380to399
                                                      ? 0.0
                                                      : 100,
                              left: (sw400to590)
                                  ? 5.0
                                  : sw600
                                      ? 25
                                      : sw900
                                          ? 50
                                          : sw320to380
                                              ? 15
                                              : sw380to399
                                                  ? 30.0
                                                  : 5.0),
                          width: sw320to380
                              ? 110.0
                              : sw380to399
                                  ? 80.0
                                  : sw600
                                      ? 110
                                      : sw900
                                          ? 140
                                          : 90.0,
                          height: sw320to380
                              ? 45.0
                              : sw380to399
                                  ? 80.0
                                  : sw600
                                      ? 110
                                      : sw900
                                          ? 140
                                          : 90.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("images/chest_btn.png"),
                                fit: BoxFit.fill),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Thighs',
                              textAlign: TextAlign.center,

                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(
                              context, HipsAndThighsListScreen.id);
                        }
                        ),
                    // Container(
                    //     margin: EdgeInsets.fromLTRB(25.0, 65.0, 0.0, 0.0),
                    //     child: Text('Thighs')
                    // )
                  ]),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                ],
              ),
            ])));
  }
}
