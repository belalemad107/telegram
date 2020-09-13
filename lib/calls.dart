import 'package:flutter/material.dart';
import 'package:telegram/selectcontact.dart';
class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectContact()));
            },
            child: Icon(Icons.call,color: Theme.of(context).canvasColor,)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back)),
        title: Text('Calls'),
        backgroundColor: Theme.of(context).errorColor,
      ),
    );
  }
}
