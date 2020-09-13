import 'package:flutter/material.dart';
import 'package:telegram/chatscreen.dart';
import 'package:telegram/chatin.dart';
class AllChats extends StatefulWidget {
  @override
  _AllChatsState createState() => _AllChatsState();
}

class _AllChatsState extends State<AllChats> {
  @override
  Widget build(BuildContext context) {
   return ListView.builder(itemCount: dummyData.length,itemBuilder: (context,i) => new Column(
     children: <Widget>[
       Divider(
         height: 10.0,
       ),
       InkWell(
         onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) =>ChatIn()));
         },
         child: new ListTile(
           leading: new CircleAvatar(foregroundColor: Theme.of(context).primaryColor,
           backgroundColor: Theme.of(context).canvasColor,
           backgroundImage: new NetworkImage(dummyData[i].avatar),
           ),
           title: new Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               new Text(dummyData[i].name,style: TextStyle(fontWeight: FontWeight.bold),),
               new Text(dummyData[i].time,style: TextStyle(color: Theme.of(context).errorColor,fontSize: 14.0),)
             ],
           ),
           subtitle: Padding(
             padding: EdgeInsets.only(top: 5.0),
             child: new Container(
             child :  new Text(dummyData[i].message,style: TextStyle(color: Theme.of(context).errorColor,fontSize: 14.0),),
             ),
           ),
         ),
       )
     ],
   ));
  }
}
