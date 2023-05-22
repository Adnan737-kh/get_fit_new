import 'package:flutter/material.dart';
import 'package:get_fit_new/with_equipment/exercises/exercise.dart';
import 'package:get_fit_new/constants.dart';


class ArmsListScreen extends StatelessWidget {
  static const String id = 'arms_screen_list';

  @override
  Widget build(BuildContext context) {
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
          'Arms Exercises',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: ListView(
          children: <Widget>[
            CardItem(
              itemName: 'Bicep Curls',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseScreen(
                          imageSource: 'images/bicep_curls.png',
                          contentSource: kBicepCurl,
                          exerciseName: 'Bicep Curls',
                          showAd: false,
                        ),
                  ),
                );
              },
            ),
            CardItem(
              itemName: 'Hammer Curls',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseScreen(
                          imageSource: 'images/hammer_curls.png',
                          contentSource: kHammerCurl,
                          exerciseName: 'Hammer Curls',
                          showAd: true,
                        ),
                  ),
                );
              },
            ),
            CardItem(
              itemName: 'OverHead Tricep\nExtension',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseScreen(
                          imageSource:
                              'images/tricep_overhead_extension.png',
                          contentSource: kOverHeadTriceps,
                          exerciseName: 'OverHead Triceps Extension',
                          showAd: false,
                        ),
                  ),
                );
              },
            ),
            CardItem(
              itemName: 'Cross Chest\nExtension',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseScreen(
                          imageSource: 'images/cross_chest.png',
                          contentSource: kCrossChestExtension,
                          exerciseName: 'Cross Chest Extension',
                          showAd: true,
                        ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;

  CardItem({required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {

    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    var sw320to400 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 400;
    var sw320to380 = MediaQuery.of(context).size.width > 320 && MediaQuery.of(context).size.width < 380;
    var sw380to399 = MediaQuery.of(context).size.width > 380 && MediaQuery.of(context).size.width < 399;
    var sw400to590 = MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 599;
    var sh790to820 = MediaQuery.of(context).size.height > 790 && MediaQuery.of(context).size.height < 820;

    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          top: sw600 ? 15.0 : 10.0,
          right: sw600 ? 20 : sw900 ? 30 :  10.0 ,
          left: sw600 ? 20 : sw900 ? 30 : 10.0,
        ),
        width: double.maxFinite,
        height: sw600 ? 100.0 : sw900 ? 150 :  85.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/flatbelly_item.png'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),

        child: Center(
          child: Text(
            itemName,
            style: TextStyle(
              fontFamily: 'Lato',
              //color: Color(0xFF3497DA),
              color: Colors.black,
              fontSize: sw600 ? 28 : sw900 ? 36 :  22.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}

class ListItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;

  ListItem({required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    var sw600 = MediaQuery.of(context).size.width >= 600;

    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.redAccent,
        ),
        margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        width: double.maxFinite,
        height: 85.0,
        child: Center(
          child: Text(
            itemName,
            style: TextStyle(
              color: Colors.black,
              fontSize: sw600 ? 30 : 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
