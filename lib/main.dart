import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'More Categories',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Categories(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Container _categoryItem(String image, String title,
      {BorderSide leftBoder = BorderSide.none,
      BorderSide rightBoder = BorderSide.none,
      BorderSide topBoder = BorderSide.none,
      BorderSide bottomBoder = BorderSide.none}) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(
          top: topBoder,
          bottom: bottomBoder,
          left: leftBoder,
          right: rightBoder,
        ),
      ),
      child: image == ""
          ? Container()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10),
                _imageContainer(image),
                Text(title),
              ],
            ),
    );
  }

  Container _imageContainer(String image) => Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 3.0, color: Colors.grey)),
      child: ClipOval(
        child: Image.asset(image),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "More categories",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.1,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            _categoryItem("assets/images/default.png", "Automotive",
                rightBoder: BorderSide(), bottomBoder: BorderSide()),
            _categoryItem("assets/images/default.png", "Books",
                rightBoder: BorderSide(), bottomBoder: BorderSide()),
            _categoryItem("assets/images/default.png", "Musical Instrument",
                bottomBoder: BorderSide()),
            _categoryItem("assets/images/default.png", "Movies & Music",
                rightBoder: BorderSide(), bottomBoder: BorderSide()),
            _categoryItem("assets/images/default.png", "Hobbies",
                rightBoder: BorderSide(), bottomBoder: BorderSide()),
            _categoryItem("assets/images/default.png", "Online education",
                bottomBoder: BorderSide()),
            _categoryItem("assets/images/default.png", "Gift Cards",
                rightBoder: BorderSide()),
            _categoryItem("assets/images/default.png", "Gaming",
                rightBoder: BorderSide()),
            _categoryItem("", ""),
          ],
        ),
      ),
    );
  }
}
