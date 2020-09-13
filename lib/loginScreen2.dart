import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:telegram/loginScreen3.dart';
class LoginScreen2 extends StatefulWidget {
  @override
  _LoginScreen2State createState() => _LoginScreen2State();
}
class _LoginScreen2State extends State<LoginScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Your Phone'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child:
            Column(
              children: <Widget>[ Padding(
                padding: const EdgeInsets.all(15.0),
                child: ConstrainedBox(constraints:BoxConstraints.tight(Size(350,50),),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Country'),),
                ),
              ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ConstrainedBox(constraints:BoxConstraints.tight(Size(50,50),),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(hintText: 'Code'),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ConstrainedBox(constraints:BoxConstraints.tight(Size(250,50),),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(hintText: 'Phone Number'),),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Please confirm your country code and enter your phone number.',style: TextStyle(color: Theme.of(context).accentColor),),
                ),
                ],
            )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) =>LoginScreen3())); },
        child: Icon(Icons.arrow_forward,color: Theme.of(context).canvasColor,),
          )
      );

  }
}

