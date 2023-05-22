import 'package:flutter/material.dart';
import 'exercise.dart';
import 'package:get_fit_new/constants.dart';


class ChestListScreen extends StatelessWidget {
  static const String id = 'chest_list_screen';

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
          'Chest Exercises',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Container(
         // decoration: BoxDecoration(color: Color(0xFFECEEEE)),
          child: ListView(
            children: <Widget>[
              CardItem(
                cardName: 'Single Arm Rows',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExerciseScreen(
                            imageSource: 'images/single_arm_rows.png',
                            contentSource: kSingleArmRows,
                            exerciseName: 'Single Arm Rows',
                            showAd: false,
                          ),
                    ),
                  );
                },
              ),
              CardItem(
                cardName: 'PushUps',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExerciseScreen(
                            imageSource: 'images/pushups_.png',
                            contentSource: kPushUps,
                            exerciseName: 'PushUps',
                            showAd: true,
                          ),
                    ),
                  );
                },
              ),
              CardItem(
                  cardName: 'Butterflies',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExerciseScreen(
                              imageSource: 'images/butterfly.png',
                              contentSource: kButterflies,
                              exerciseName: 'Butterflies',
                              showAd: false,
                            ),
                      ),
                    );
                  }),
              CardItem(
                  cardName: 'Bent Over Rows',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExerciseScreen(
                              imageSource: 'images/bent_over_row.png',
                              contentSource: kBentOverRows,
                              exerciseName: 'Bent Over Rows',
                              showAd: true,
                            ),
                      ),
                    );
                  }),
              CardItem(
                  cardName: 'Palm Press',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExerciseScreen(
                          imageSource: 'images/palm_press.png',
                          contentSource: kPalmPress,
                          exerciseName: 'Palm Press',
                          showAd: false,
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String cardName;
  final VoidCallback onTap;

  CardItem({required this.cardName, required this.onTap});

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
            cardName,
            style: TextStyle(
              //     color: Color(0xFF3497DA),
              color: Colors.black,
              fontFamily: 'Lato',
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



    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xFF3497DA),
        ),
        margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        width: double.maxFinite,
        height: 85.0,
        child: Center(
          child: Text(
            itemName,
            style: TextStyle(
              fontSize: 26.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}

//ListItem(
//itemName: 'Single Arm Rows',
//onTap: () {
//Navigator.push(
//context,
//MaterialPageRoute(
//builder: (context) => ExerciseScreen(
//imageSource: 'images/single_arm_rows.png',
//contentSource: kSingleArmRows,
//exerciseName: 'Single Arm Rows',
//),
//),
//);
//},
//),
