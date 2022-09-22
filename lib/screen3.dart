import 'package:flutter/material.dart';
 
class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
                'Meditate',
                style: TextStyle(fontSize: 27.0, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "Raleway"),
                textAlign: TextAlign.left,
                ),
        actions: [Image.asset('assets/images/page3.png', height: 26, width: 26,),Container(width: 20,)],
      ),
      body: Padding(padding: EdgeInsets.fromLTRB(20.0,10.0,20.0,0), child: 
      SingleChildScrollView(
          child:
      Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
                ButtonTheme(
                minWidth: 10.0,
                height: 30.0,
                child: 
                RaisedButton(
                  onPressed: () {
                  },
                  child: Text('All',
                  style: TextStyle(fontSize: 14.0, color: Colors.white)),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.cyan,

                ),
                ),
                Container(width: 10,),
                 ButtonTheme(
                minWidth: 10.0,
                height: 30.0,
                child: 
                RaisedButton(
                  onPressed: () {
                  },
                  child: Text('Bible In a Year',
                  style: TextStyle(fontSize: 14.0, color: Colors.cyan)),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  color: Color.fromARGB(255, 214, 234, 251),
                ),
                 ),
                Container(width: 10,),
                 ButtonTheme(
                minWidth: 10.0,
                height: 30.0,
                child: 
                RaisedButton(
                  onPressed: () {
                  },
                  child: Text('Dailies',
                  style: TextStyle(fontSize: 14.0, color: Colors.cyan)),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  color: Color.fromARGB(255, 214, 234, 251),
                ),
                 ),
                Container(width: 10,),
                 ButtonTheme(
                minWidth: 10.0,
                height: 30.0,
                child: 
                RaisedButton(
                  onPressed: () {
                  },
                  child: Text('Minutes',
                  style: TextStyle(fontSize: 14.0, color: Colors.cyan)),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  color: Color.fromARGB(255, 214, 234, 251),
                ),
                 ),
                Container(width: 10,),
                 ButtonTheme(
                minWidth: 10.0,
                height: 30.0,
                child: 
                RaisedButton(
                  onPressed: () {
                  },
                  child: Text('November',
                  style: TextStyle(fontSize: 14.0, color: Colors.cyan)),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  color: Color.fromARGB(255, 214, 234, 251),
                ),
                 ),
        ]),),



        Column(children: [
          Padding(padding: EdgeInsets.fromLTRB(0.0,0.0,0.0,0), child: 
          Image.asset('assets/images/page31.png'),
          ),


            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(height: 10,),
              Text(
                'A Song of Moon',
                style: TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "Raleway"),
                textAlign: TextAlign.left,
                ),
              Container(height: 10,),
               Text(
                'Start with the basics',
                style: TextStyle(fontSize: 16.0, color: Colors.black),
                textAlign: TextAlign.left,
                ),
              Container(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: 
              Row(
                children: [
                Row(children: [
                   Image.asset('assets/images/page32.png', height: 11, width: 11,),
                Text(
                '  9 Sessions',
                style: TextStyle(fontSize: 10.0, color: Colors.blueGrey),
                textAlign: TextAlign.left,
                ),
                ],),
                Container(width: 280,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  Text(
                'Start >',
                style: TextStyle(fontSize: 10.0, color: Colors.blueGrey),
                textAlign: TextAlign.left,
                ),
                ],)
              ],)
              ),
              Container(height: 20,)
            ],),
        ],),

        Padding(padding: EdgeInsets.fromLTRB(20.0,10.0,20.0,0), child:
        Column(children: [
          Row(children: [
            Column(children: [
              Image.asset('assets/images/page33.png', width: 150,),

              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(height: 10,),
              Text(
                'The Sleep Hour',
                style: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "Raleway"),
                textAlign: TextAlign.left,
                ),
              Container(height: 10,),
               Text(
                'Ashna Mukherjee',
                style: TextStyle(fontSize: 11.0, color: Colors.black),
                textAlign: TextAlign.left,
                ),
              Container(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: 
              Row(
                children: [
                Row(children: [
                   Image.asset('assets/images/page32.png', height: 9, width: 9,),
                Text(
                '  3 Sessions',
                style: TextStyle(fontSize: 10.0, color: Colors.blueGrey),
                textAlign: TextAlign.left,
                ),
                ],),
                Container(width: 50,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  Text(
                'Start >',
                style: TextStyle(fontSize: 10.0, color: Colors.blueGrey),
                textAlign: TextAlign.left,
                ),
                ],)
              ],)
              )
              
            ],),

            ],),
            Container(width: 16,),
            Column(children: [
              Image.asset('assets/images/page34.png',  width: 150,),

              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(height: 10,),
              Text(
                'Easy on the Mission',
                style: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "Raleway"),
                textAlign: TextAlign.left,
                ),
              Container(height: 10,),
               Text(
                'Peter Mach',
                style: TextStyle(fontSize: 11.0, color: Colors.black),
                textAlign: TextAlign.left,
                ),
              Container(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: 
              Row(
                children: [
                Row(children: [
                   Image.asset('assets/images/page32.png', height: 9, width: 9,),
                Text(
                '  5 minutes',
                style: TextStyle(fontSize: 10.0, color: Colors.blueGrey),
                textAlign: TextAlign.left,
                ),
                ],),
                Container(width: 50,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  Text(
                'Start >',
                style: TextStyle(fontSize: 10.0, color: Colors.blueGrey),
                textAlign: TextAlign.left,
                ),
                ],)
              ],)
              )
              
            ],),
            ],)
          ],),
          Container(height: 20,),
          Row(children: [
            
            Column(children: [
              Image.asset('assets/images/page35.png', width: 150,),

              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(height: 10,),
              Text(
                'Relax with Me',
                style: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "Raleway"),
                textAlign: TextAlign.left,
                ),
              Container(height: 10,),
               Text(
                'Amanda James',
                style: TextStyle(fontSize: 11.0, color: Colors.black),
                textAlign: TextAlign.left,
                ),
              Container(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: 
              Row(
                children: [
                Row(children: [
                   Image.asset('assets/images/page32.png', height: 9, width: 9,),
                Text(
                '  3 Sessions',
                style: TextStyle(fontSize: 10.0, color: Colors.blueGrey),
                textAlign: TextAlign.left,
                ),
                ],),
                Container(width: 50,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  Text(
                'Start >',
                style: TextStyle(fontSize: 10.0, color: Colors.blueGrey),
                textAlign: TextAlign.left,
                ),
                ],)
              ],)
              )
              
            ],),

            ],),
            Container(width: 16,),
            Column(children: [
              Image.asset('assets/images/page36.png',  width: 150,),

              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(height: 10,),
              Text(
                'Sun and Energy',
                style: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "Raleway"),
                textAlign: TextAlign.left,
                ),
              Container(height: 10,),
               Text(
                'Micheal Hiu',
                style: TextStyle(fontSize: 11.0, color: Colors.black),
                textAlign: TextAlign.left,
                ),
              Container(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: 
              Row(
                children: [
                Row(children: [
                   Image.asset('assets/images/page32.png', height: 9, width: 9,),
                Text(
                '  5 minutes',
                style: TextStyle(fontSize: 10.0, color: Colors.blueGrey),
                textAlign: TextAlign.left,
                ),
                ],),
                Container(width: 50,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  Text(
                'Start >',
                style: TextStyle(fontSize: 10.0, color: Colors.blueGrey),
                textAlign: TextAlign.left,
                ),
                ],)
              ],)
              )
              
            ],),
            ],)

          ],)
        ],)
        )
      ],),

      )

      )
    );
  }
}