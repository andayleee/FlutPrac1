import 'package:flutter/material.dart';

class Medinow extends StatefulWidget {
  const Medinow({super.key});

  @override
  State<Medinow> createState() => _MedinowState();
}

class _MedinowState extends State<Medinow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
        body: Padding(padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,0), child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
            Container(
              child: const Text(
                'medinow',
                style: const TextStyle(fontSize: 40.0, color: Colors.white, fontWeight: FontWeight. bold, fontFamily: "Raleway"),
              ),
              alignment: Alignment.center,
            ),
            Container(
              child: const Text(
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
                  
                  child: const Text('Sing in with Apple',
                  style: const TextStyle(fontSize: 17.0)),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.white,
                  
                ),
                RaisedButton(
                  onPressed: () {
                  },
                  child: const Text('Continue with Email or Phone',
                  style: TextStyle(fontSize: 17.0)),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  color: const Color.fromARGB(255, 214, 234, 251),
                ),
                GestureDetector(
                  onTap: () {
                  },
                  
                  child: const Text(
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