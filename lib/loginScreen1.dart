import 'package:flutter/material.dart';
import 'package:telegram/loginScreen2.dart';
class LoginScreen1 extends StatefulWidget {
  @override
  _LoginScreen1State createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  Widget _options(){
    return Container(
      width: 7,
      height: 7,
      decoration: BoxDecoration(color: Theme.of(context).accentColor,borderRadius: BorderRadius.circular(5)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/4),
              width: 130,
              height: 130,
              child: Image.asset('assets/telegram.png'),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text('Telegram',style: TextStyle(fontSize: 25),),
          ),
          Text('The world fastest messaging app.'),
          Text('It is free and secure.'),
          SizedBox(height: 20,),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left :MediaQuery.of(context).size.width/3+32),
                width: 7,
                height: 7,
                decoration: BoxDecoration(color: Theme.of(context).primaryColor,borderRadius: BorderRadius.circular(5)),
              ),
              SizedBox(width: 5,),
              _options(),
              SizedBox(width: 5,),
              _options(),
              SizedBox(width: 5,),
              _options(),
              SizedBox(width: 5,),
              _options(),
              SizedBox(width: 5,),
              _options(),

            ],
          ),
          Center(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>LoginScreen2(),
                ));
              },
              child: Container(
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.width*(3/4)-50 ),
                width: MediaQuery.of(context).size.width/2,
                height: 50,
                decoration: BoxDecoration(color: Theme.of(context).primaryColor,borderRadius: BorderRadius.circular(5)),
                child: Center(child: Text('Start Messaging',style: TextStyle(color: Theme.of(context).canvasColor,fontSize: 20),)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
