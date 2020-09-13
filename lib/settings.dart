import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() => runApp(Settings());
class Settings extends StatelessWidget {
  Settings({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget _items({Widget icon,String title}){
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: <Widget>[
            icon,
            SizedBox(width: 15,),
            Text(title,style: TextStyle(fontSize: 17),),
          ],
        ),
      );
    }
    return MaterialApp(
        home: Scaffold(

        body: CustomScrollView(
        slivers: <Widget>[

        SliverAppBar(
          pinned: true,

          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title:Row(
              children: <Widget>[
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage('https://image.freepik.com/free-photo/mand-holding-cup_1258-340.jpg',)
                    ),
                  ),
                ),
              ),
                SizedBox(width: 15,),
                Text('Belal Emad',style: TextStyle(fontSize: 18,color: Theme.of(context).canvasColor),)
              ],
            ), 
            background: Image.network('https://image.freepik.com/free-photo/mand-holding-cup_1258-340.jpg',fit: BoxFit.cover,),
          ),
    floating: true,
    expandedHeight: 200,
    ),
    SliverList(

      delegate: SliverChildListDelegate(
      [
        Column(
          children: <Widget>[
           Container(
             height: 200,
             width: MediaQuery.of(context).size.width,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text('Account',style: TextStyle(fontSize: 17,color: Theme.of(context).primaryColor,),
                   ),
               Text('+20 106 6010293',style: TextStyle(fontSize: 17,color: Colors.black,),
               ),
               Text('Tab to change phone number',style: TextStyle(fontSize: 15,color: Theme.of(context).accentColor),
               ),
               Container(
                 margin: EdgeInsets.only(left: 20),
                 width: MediaQuery.of(context).size.width,
                 height: 1,
                 color: Theme.of(context).accentColor,
               ),
               Text('@Belalemad',style: TextStyle(fontSize: 17,color: Colors.black,),
               ),
               Text('Username',style: TextStyle(fontSize: 15,color: Theme.of(context).accentColor),
               ),
                   Container(
                     margin: EdgeInsets.only(left: 20),
                     width: MediaQuery.of(context).size.width,
                     height: 1,
                     color: Theme.of(context).accentColor,
                   ),
               Text('Your Bio',style: TextStyle(fontSize: 17,color: Colors.black),
                   ),
                   Text('Bio',style: TextStyle(fontSize: 15,color: Theme.of(context).accentColor),
                   ),
                  ],
               ),
             ),
           ),
            Container(
              height: 405,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Container(
                    child: Text('Settings',style: TextStyle(fontSize: 17,color: Theme.of(context).primaryColor,),),
                  margin: EdgeInsets.only(left: 8),
                ),
                  _items(icon: Icon(Icons.notifications),title: 'Notifications and Sounds'),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Theme.of(context).accentColor,
                  ),
                  _items(icon: Icon(Icons.lock),title: 'Privacy and Security'),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Theme.of(context).accentColor,
                  ),
                  _items(icon: Icon(Icons.data_usage),title: 'Data and Storage'),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Theme.of(context).accentColor,
                  ),
                  _items(icon: Icon(Icons.chat_bubble_outline),title: 'Chat Settings'),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Theme.of(context).accentColor,
                  ),
                  _items(icon: Icon(Icons.folder),title: 'Folders'),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Theme.of(context).accentColor,
                  ),
                  _items(icon: Icon(Icons.devices),title: 'Devices'),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Theme.of(context).accentColor,
                  ),
                  _items(icon: Icon(Icons.language),title: 'Language'),
                ],
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text('Help',style: TextStyle(fontSize: 17,color: Theme.of(context).primaryColor,),),
                    margin: EdgeInsets.only(left: 8),
                  ),
                  _items(icon: Icon(Icons.question_answer),title: 'Ask a Question'),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Theme.of(context).accentColor,
                  ),
                  _items(icon: Icon(Icons.error),title: 'Telegram FAQ'),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Theme.of(context).accentColor,
                  ),
                  _items(icon: Icon(Icons.check_box),title: 'Privacy Policy'),
                ],
              ),
            )
          ],
        )
      ]
    ),
    )
        ]
    )
    )
    );
  }
}
