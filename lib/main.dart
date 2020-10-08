import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// for hot reload to work we need to create StatelessWidget shortcut to that is stless
//just save to see it instantly
//or press thunder button
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        //Container is similar to Div
        //Starting to learn layout
        //        |
        //     /     \
        //  single  multiple
        body: SafeArea(
            //Container was wrapped around a container(alt+enter)
            child: Column(
          //to limit what column takes in to size of widgets in it
          // ->mainAxisSize: MainAxisSize.min,

          //to start upside down:
          // ->verticalDirection: VerticalDirection.up,

          //mainAxisAlignment: MainAxisAlignment.center, // start is default
          //space evenly
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //spaceBetween
          //Cross access alignment
          //-stretch to fill completely

          //pushing all children to the right one way is to create invisible container with width: double.infinity
          //and using cross access alignment as end
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Text("Container 1"),
//container without child  tries to take whole space
//and when an widget is given to it, it will shrink to the size of widget (children)

//adjusting height and weight
              height: 100.0,
              width: 100.0,

//margin property
//for all side -> margin: EdgeInsets.all(20.0),
//for top and bottom -> margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
// for only one side margin: EdgeInsets.only(left :30.0)
              //    margin: EdgeInsets.fromLTRB(20.0, 10.0, 50.0, 60.0),

// to set child position we will use padding (for the inside of the widget)
              //    padding: EdgeInsets.all(20.0)
            ),
            SizedBox(
              height: 20.0,
            ), //to give spacing between  container
            Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
                child: Text("Container 2")),
            Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
                child: Text("Container 3"))
          ],
        )
            //container can have only single child

            //Columns(V) and rows(H) can include multiple widgets

            ),
      ),
    );
  }
}
