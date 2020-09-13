import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram/contactings.dart';
class ContactL extends StatefulWidget {
  @override
  _ContactLState createState() => _ContactLState();
}
class _ContactLState extends State<ContactL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: ListView.builder(itemCount: dummyData.length,itemBuilder: (context,i) => new Column(
            children: <Widget>[
              Divider(
                height: 10.0,
              ),
              new ListTile(
                leading: new CircleAvatar(foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Theme.of(context).canvasColor,
                  backgroundImage: new NetworkImage(dummyData[i].avatar),
                ),
                title: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(dummyData[i].name,style: TextStyle(fontWeight: FontWeight.bold),),
                    new Text(dummyData[i].number,style: TextStyle(color: Theme.of(context).errorColor,fontSize: 14.0),)
                  ],
                ),
              ),
            ]
        ),
        ),
      ),
    );
  }
}
