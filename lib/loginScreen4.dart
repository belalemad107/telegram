import 'package:flutter/material.dart';
class LoginScreen4 extends StatefulWidget {
  @override
  _LoginScreen4State createState() => _LoginScreen4State();
}

class _LoginScreen4State extends State<LoginScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        automaticallyImplyLeading: false,
        title: Text('Phone Verification'),
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
              child: Text('Enter code',style: TextStyle(fontSize: 20,),)),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/4-95,),
                child: Text('we ’ve sent an SMS wit an activation code to your phone +20 01066010293',style: TextStyle(fontSize: 15),)),
          ),
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/4-90),
            child: ConstrainedBox(constraints:BoxConstraints.tight(Size(150,50),),
              child: TextFormField(
                keyboardType: TextInputType.number,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
