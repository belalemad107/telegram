import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram/loginScreen4.dart';
class LoginScreen3 extends StatefulWidget {
  @override
  _LoginScreen3State createState() => _LoginScreen3State();
}

class _LoginScreen3State extends State<LoginScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(child: Icon(Icons.arrow_back)),
        automaticallyImplyLeading: false,
        title: Text('+20 01 0660 1029 3'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/4-95,top: 40),
            width: 100,
            height: 100,
            child: Icon(Icons.important_devices,size: 100,color: Theme.of(context).primaryColor,)
          ),
          SizedBox(height: 15,),
          Container(
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/4-95),
              child: Text('Check your telegram messages',style: TextStyle(fontSize: 20,),)),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/4-95,),
                child: Text('we ’ve sent the code to the Telegram app on your other device.',style: TextStyle(fontSize: 15),)),
          ),
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/4-95),
            child: ConstrainedBox(constraints:BoxConstraints.tight(Size(150,50),),
              child: TextFormField(
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          SizedBox(height: 30,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen4()));
              },
              child: Text('Send the code as an SMS',style: TextStyle(color: Theme.of(context).primaryColor),))
        ],
      ),
    );
  }
}
