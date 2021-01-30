import 'package:flutter/material.dart';
import 'package:fire/pages/vid2.dart';

class Description2 extends StatelessWidget {
  final List values2;
  Description2({Key key, @required this.values2}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // backgroundColor: new Color(0xFFBD202C),
        // appBar: AppBar(
        //     // title: Text("Button Demo"),
        //     ),
        body: ListView(
      children: <Widget>[
        RichText(
            text: TextSpan(
          // style: TextStyle(
          //     color: Colors.black.withOpacity(0.6),
          //     fontWeight: FontWeight.bold),
          // text: 'Flutter Tutorial ',
          // style: DefaultTextStyleI.of(context).style,
          children: <TextSpan>[
            TextSpan(
                text: 'VIDEO DISCRIPTION ',
                style: TextStyle(
                  fontSize: 25,

                  color: Colors.black,
                  fontFamily: 'Raleway',
                  package: 'awesome_package',

                  // fontStyle: FontStyle.italic,

                  // fontStyle:FontStyle,regular,
                  fontWeight: FontWeight.bold,
                )),
            // TextSpan(
            //     style: TextStyle(
            //         fontSize: 20,
            //         fontStyle: FontStyle.italic,
            //         color: Colors.black,
            //         fontWeight: FontWeight.bold),
            //     text: ' \nwith fire ready 24/7 '),
            TextSpan(
                style: TextStyle(
                    fontSize: 15,
                    // fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                text: ' \naffordable'),
            TextSpan(
                style: TextStyle(
                    fontSize: 15,
                    // fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                text: '\nSeafty '),
            TextSpan(
                style: TextStyle(
                    fontSize: 15,
                    // fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                text:
                    'Fire Detection System comprises of Smoke \n detectors, Heat detectors, Hooters, Public \nAddress system etc. which is deployed with \nthe main purpose of providing early warning to the occupants about animpending bigger fire')
          ],
        )),

        Padding(
            padding: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 10.0),
            child: new SizedBox(
                width: 300.0,
                child: RaisedButton(
                    color: Colors.green,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Vid2(values3: values2)));
                    },
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: <Widget>[
                        Icon(Icons.movie_rounded),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("WATCH VIDEO"),
                          ],
                        ),

                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.end,
                        //   children: <Widget>[
                        //     Icon(Icons.done),
                        //   ],
                        // ),
                      ],
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)))))
        // SizedBox(height: 20),
        // FloatingActionButton(
        //     label: Text('WATCH VIDEO'),
        //     icon: Icon(Icons.movie_rounded),
        //     backgroundColor: Colors.white,
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         new MaterialPageRoute(builder: (context) => new Vid1()),
        //       );

        //       // Navigator.pushNamed(context, "/home");
        //     }),
      ],
    ));
  }
}
