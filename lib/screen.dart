import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
        body: Padding(padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,0), child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
            Container(
              child: Text(
                'medinow',
                style: TextStyle(fontSize: 40.0, color: Colors.white, fontWeight: FontWeight. bold, fontFamily: "Raleway"),
              ),
              alignment: Alignment.center,
            ),
            Container(
              child: Text(
                'Meditate With Us!',
                style: TextStyle(fontSize: 17.0, color: Colors.white, fontFamily: "Raleway"),
              ),
            ),
            Container(
              height: 30
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                
                children: [
                RaisedButton(
                  onPressed: () {
                    
                    //Navigator.pushNamed(context, "/AboutMe");
                    
                  },
                  
                  child: Text('Sing in with Apple',
                  style: TextStyle(fontSize: 17.0)),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.white,
                  
                ),
                RaisedButton(
                  onPressed: () {
                  },
                  child: Text('Continue with Email or Phone',
                  style: TextStyle(fontSize: 17.0)),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  color: Color.fromARGB(255, 214, 234, 251),
                ),
                GestureDetector(
                  onTap: () {
                  },
                  
                  child: Text(
                'Continue With Google',
                style: TextStyle(fontSize: 17.0, color: Colors.white, fontFamily: "Raleway"),
                textAlign: TextAlign.center,
                )
                )
                
              ],)
            ),
            Container(
              height: 30
            ),
            
          ],),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
            Image.asset('assets/images/login.png'),
          ],)
        ],)
        )
        
        );
  }
}