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
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
                //control+j to know what all can we set for it and ctrl+q in windows
                radius: 50.0,
                //backgroundColor: Colors.red,
                backgroundImage: AssetImage('images/dewanshu.png')),
            Text('Dewanshu H',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  color: Colors.teal[100],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  fontFamily: 'Source Sans Pro'),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal[100],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  // size: 100.0,
                  color: Colors.teal,
                ),
                title: Text(
                  '+91 8989898989',
                  style: TextStyle(
                      color: Colors.teal[900],
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
                //color: Colors.white, by default it is white
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'diitism@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                      color: Colors.teal[900],
                    ),
                  ),
                )),
          ],
        )),
      ),
    );
  }
}

//Use it to use ROW instead of ListTile

//child: Padding(
//padding: const EdgeInsets.all(10.0),
// child: Row(
//   children: <Widget>[
//     Icon(
//       Icons.phone,
//       // size: 100.0,
//       color: Colors.teal,
//     ),
//     SizedBox(
//       width: 10.0,
//     ),
//     Text(
//       '+91 8989898989',
//       style: TextStyle(
//           color: Colors.teal[900],
//           fontFamily: 'Source Sans Pro',
//           fontSize: 20.0),
//     ),
//   ],
// ),
