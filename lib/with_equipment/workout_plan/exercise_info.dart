import 'package:flutter/material.dart';

class ExerciseInfo extends StatelessWidget {
  static const String id = 'exercise_Info';

  final String imageSource;
  final String content;

  ExerciseInfo({required this.imageSource, required this.content});

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
          'Exercise Info',
        ),
      ),
      body: Layout(
        imageSource: imageSource,
        content: content,
      ),
    );
  }
}

class Layout extends StatelessWidget {
  final String imageSource;
  final String content;

  Layout({required this.imageSource, required this.content});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageSource(imageSource: imageSource),
          SizedBox(
            height: 3.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                color: Colors.black,
              ),
            ),
          ),
          ContentSource(content: content),
        ],
      ),
    );
  }
}

class ContentSource extends StatelessWidget {
  final String content;

  ContentSource({required this.content});

  @override
  Widget build(BuildContext context) {
    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;
    return Padding(
      padding: const EdgeInsets.only(
          top: 15.0, right: 10.0, left: 10.0, bottom: 15.0),
      child: Text(
        content,
        style: TextStyle(
          fontSize: sw600 ? 32.0 : sw900 ? 36 :  20.0,
          fontFamily: 'Lato',
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class ImageSource extends StatelessWidget {
  final String imageSource;

  ImageSource({required this.imageSource});

  @override
  Widget build(BuildContext context) {

    var sw600 = MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 880;
    var sw900 = MediaQuery.of(context).size.width >= 890;

    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: sw600 ? 300.0 : sw900 ? 400 : 210.0,
      height: sw600 ? 300.0 : sw900 ? 400 :  200.0,
      child: Image(
        image: AssetImage(imageSource),
        width: sw600 ? 300.0 : 200.0,
        height: sw600 ? 290.0 : 190.0,
        alignment: Alignment.center,
      ),
    );
  }
}
