import 'package:flutter/material.dart';
import 'package:telegram/addcontact.dart';
class NewMessage extends StatefulWidget {
  @override
  _NewMessageState createState() => _NewMessageState();
}
class _NewMessageState extends State<NewMessage> {
  Widget _items({Widget icon,String title}){
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: <Widget>[
          icon,
          SizedBox(width: 20,),
          Text(title,style: TextStyle(fontSize: 17),)
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Message'),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Icon(Icons.message),
          ),
        ],
      ),
        floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add,color: Theme.of(context).canvasColor,),
        onPressed: (){
        Navigator.push(context, MaterialPageRoute(
        builder: (context ) => AddContact()
     ));
    },
    ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Column(
              children: <Widget>[
                _items(
                  icon: Icon(Icons.group),title: "New Group"
                ),
                _items(
                    icon: Icon(Icons.lock),title: "New Secret Chat"
                ),
                _items(
                    icon: Icon(Icons.library_add),title: "New Channel"
                ),
              ],
            ),
          )
        ],
      ),
    );

  }
}
