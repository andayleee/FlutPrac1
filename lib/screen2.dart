import 'package:flutter/material.dart';
 
class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.fromLTRB(20.0,10.0,20.0,0), child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisSize: MainAxisSize.max,
        children: [
          SafeArea(child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            //mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset('assets/images/page2.png'),
              Container(height: 8),
              Text(
                'Peter Mach',
                style: TextStyle(fontSize: 17.0, color: Colors.blueGrey, fontFamily: "Raleway"),
                textAlign: TextAlign.left,
                ),
                Container(height: 8),
                Text(
                'Mind Deep Relax',
                style: TextStyle(fontSize: 27.0, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "Raleway"),
                textAlign: TextAlign.left,
                ),
                Container(height: 8),
                Text(
                'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happies session across the World.',
                style: TextStyle(fontSize: 17.0, color: Colors.black),
                textAlign: TextAlign.left,
                ),
                Container(height: 30),
          ],)
          ),
          
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            RaisedButton.icon(
                  onPressed: () {
                  },
                  
                  
                  icon: Icon(Icons.play_arrow_outlined, color: Colors.white,),
                  label: Text('Play Next Session',
                  style: TextStyle(fontSize: 17.0, color: Colors.white )),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.cyan,
                ),
                Container(height: 34),
          ],),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(children: [
                    Image.asset('assets/images/page21.png', height: 50, width: 50,),
                    Padding(padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,0), child:
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Text(
                    'Sweet Memories',
                    style: TextStyle(fontSize: 17.0, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "Raleway"),
                    textAlign: TextAlign.left,
                    ),
                    Text(
                    'December 29 Pre-Launch',
                    style: TextStyle(fontSize: 15.0, color: Colors.blueGrey, fontFamily: "Raleway"),
                    textAlign: TextAlign.left,
                    ),
                    ],)
                    ),
                    Image.asset('assets/images/page24.png', height: 20, width: 20,)
              ],),
              Container(height: 29),
              Row(children: [
                    Image.asset('assets/images/page22.png', height: 50, width: 50,),
                    Padding(padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,0), child:
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Text(
                    'A Day Dream',
                    style: TextStyle(fontSize: 17.0, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "Raleway"),
                    textAlign: TextAlign.left,
                    ),
                    Text(
                    'December 29 Pre-Launch',
                    style: TextStyle(fontSize: 15.0, color: Colors.blueGrey, fontFamily: "Raleway"),
                    textAlign: TextAlign.left,
                    ),
                    ],)
                    ),
                    Image.asset('assets/images/page24.png', height: 20, width: 20,)
              ],),
              Container(height: 29),
              Row(children: [
                Image.asset('assets/images/page23.png', height: 50, width: 50,),
                    Padding(padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,0), child:
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Text(
                    'Mind Explore',
                    style: TextStyle(fontSize: 17.0, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "Raleway"),
                    textAlign: TextAlign.left,
                    ),
                    Text(
                    'December 29 Pre-Launch',
                    style: TextStyle(fontSize: 15.0, color: Colors.blueGrey, fontFamily: "Raleway"),
                    textAlign: TextAlign.left,
                    ),
                    ],)
                    ),
                    Image.asset('assets/images/page24.png', height: 20, width: 20,)
              ],),
            ],
          )
        ],
      ),
      )
    );
  }
}