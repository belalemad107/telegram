import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram/contactings.dart';
import 'package:telegram/contactList.dart';
class InviteFriends extends StatefulWidget {
  @override
  _InviteFriendsState createState() => _InviteFriendsState();
}
class _InviteFriendsState extends State<InviteFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invite Friends'),
        backgroundColor: Theme.of(context).errorColor,
      ),
      body:
          Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: TextField(
              autofocus: true,
              autocorrect: true,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(
                        width: 2.0,
                        style: BorderStyle.solid,
                        color: Theme.of(context).accentColor)
                ),
                hintText: '    Search Contacts',hoverColor: Theme.of(context).accentColor,hintStyle: TextStyle(
                  color: Theme.of(context).accentColor
              ),
              ),
          ),
            ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Flexible(
          child: Row(
            children: <Widget>[
              Icon(Icons.share,size: 20,color: Theme.of(context).accentColor,),
              SizedBox(width: 15,),
              Container(
                child: Text('Share Telegram',style: TextStyle(fontSize: 18,color: Colors.black87),),
              ),
            ],
          ),
        ),
      ),
            Padding(
              padding: EdgeInsets.only(left: 50,top: 10),
              child: Container(
                color: Theme.of(context).accentColor,
                width: 320,
                height: 1.0,
              ),
            ),
            ContactL(),
            ],
          ),
    );
  }
}
