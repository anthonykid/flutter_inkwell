import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//we can make a gradient button using inkwell
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Practice Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton( //this is a normal button i make to give you guys prespective about the inkwell
              color: Colors.amber, //im coloring the button with amber
              child: Text("Raised Button"), //this is the button text
              shape: StadiumBorder(), //im making the button look circular
              onPressed: () {}, //making an anonymous method empty because the button wouldnt do anything
            ),
            Material(
              borderRadius: BorderRadius.circular(20), //border radius making the shadow look circular too
              elevation: 3, //the shadow have elevation 3
              child: Container( //we use the container to wrap the material
                width: 150, //the button width
                height: 40, //the height of the button
                decoration: BoxDecoration( //we are using boxdecoration
                    borderRadius: BorderRadius.circular(20), //making sure the border radius still circular 20
                    gradient: LinearGradient( //put an linear gradient to the button
                        colors: [Colors.purple, Colors.pink], //2 colors for the color to make an gradient
                        begin: Alignment.topCenter, //begin color
                        end: Alignment.bottomCenter)), //end color 
                child: Material( //this is the material
                  //inkweell can be put only inside Material
                  borderRadius: BorderRadius.circular(20), //make the material have border radius circular 20 too
                  color: Colors.transparent, //making the colors transparent
                  child: InkWell( //using inkwell to fill the splash color etc
                    splashColor: Colors.amber, //this is the splash color when the button is pressed in a long time
                    borderRadius: BorderRadius.circular(20), //the splash color got border radius circular 20 too
                    onTap: () {}, //making an empty anonymous method again
                    child: Center( //the child we put at center
                        child: Text( //this is the text inside the button
                      "My Button",
                      style: TextStyle( //giving the button text a textstyle
                          color: Colors.white, fontWeight: FontWeight.w600), //giving it white colors, and font weight looks like bold using w600
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
