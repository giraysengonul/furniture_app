import 'package:flutter/material.dart';
import 'components/search.dart';
import 'components/category_list.dart';
import 'components/product_card.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: TypewriterAnimatedTextKit(
            speed: Duration(milliseconds: 200),
            onTap: () {
              print("Tap Event");
            },
            text: ["Dashboard"],
            textStyle: TextStyle(fontSize: 30.0, fontFamily: "Agne"),
            textAlign: TextAlign.start,
          ),
          elevation: 0,
          centerTitle: false,
          actions: [
            IconButton(
                icon: Icon(Icons.notifications_active_outlined),
                onPressed: () {}),
          ],
        ),
        body: Column(
          children: [
            Search(),
            Categorylist(),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 70.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                  ),
                  ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => ProductCard(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
