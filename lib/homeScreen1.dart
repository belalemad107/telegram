import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram/allChats.dart';
import 'package:telegram/channel.dart';
import 'package:telegram/unRead.dart';
import 'package:telegram/personaly.dart';
import 'package:telegram/settings.dart';
import 'package:telegram/calls.dart';
import 'package:telegram/invitefriens.dart';
import 'package:telegram/search.dart';
import 'package:telegram/newmessage.dart';

class HomeScreen1 extends StatefulWidget {
  @override
  _HomeScreen1State createState() => _HomeScreen1State();
}
class _HomeScreen1State extends State<HomeScreen1> with SingleTickerProviderStateMixin {
  Widget _items({Widget icon,String title}){
   return Padding(
     padding: const EdgeInsets.all(15.0),
     child: Row(
       children: <Widget>[
       icon,
       SizedBox(width: 15,),
       Text(title,style: TextStyle(fontSize: 17),)
       ],
     ),
   );
  }
  TabController _tabController ;
  @override
  void initState() {
    _tabController =  TabController(length: 3,vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context ) => NewMessage()
          ));
        },
        child: Icon(Icons.create,color: Theme.of(context).canvasColor,),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
           Container(
             color: Theme.of(context).errorColor,
             width: 600,
             height: 150,
             child: Padding(
               padding: const EdgeInsets.all(9.0),
               child: Column(
                 children: <Widget>[
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Container(
                         width: 60,
                         height: 60,
                         margin: EdgeInsets.all(10),
                         decoration: BoxDecoration(
                             image: DecorationImage(image: NetworkImage('https://image.flaticon.com/icons/png/512/64/64572.png',),),
                             borderRadius: BorderRadius.circular(100)),
                       ),
                       Container(
                         width: 20,
                         height: 20,
                         child: Image.asset('assets/camera-night-mode.png'),
                       )
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Container(
                           margin: EdgeInsets.only(top: 15,left: 10),
                           child: Text('User Name',style: TextStyle(fontSize: 18,color: Theme.of(context).canvasColor),)),
                       Container(
                           margin: EdgeInsets.only(top: 10),
                           child: Icon(Icons.keyboard_arrow_down,color: Theme.of(context).canvasColor,))
                     ],),
                   Row(children: <Widget>[
                     Container(
                         margin: EdgeInsets.only(left: 10),
                         child: Text('01066010293',style: TextStyle(fontSize: 14,color: Theme.of(context).accentColor),))
                   ],)
                 ],
               ),
             ),
           ),
            _items(icon:Icon(Icons.group,size: 17,), title:'New Group'),
            _items(icon:Icon(Icons.lock,size: 17,), title:'New Secret Chat'),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => NewChannel()));},
                child: _items(icon:Icon(Icons.create_new_folder,size: 17,), title:'New Channel')),
            _items(icon:Icon(Icons.person_outline,size: 17,), title:'Contacts'),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Calls()
                  ));
                },
                child: _items(icon:Icon(Icons.call,size: 17,), title:'Calls')),
            _items(icon:Icon(Icons.save_alt,size: 17,), title:'Saved Messages'),
            InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings()),);},
                child: _items(icon:Icon(Icons.settings,size: 17,), title:'Settings')),
            Container(
              height: 2,
              margin: EdgeInsets.symmetric(vertical: 15),
              color: Colors.black12,
            ),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => InviteFriends()));
                },
                child: _items(icon:Icon(Icons.group_add,size: 18,), title:'Invite Friends')),
            _items(icon:Icon(Icons.error,size: 18,), title:'Telegram FAQ'),
            ],
        )
        ),
      body:
      TabBarView(
        controller: _tabController,
        children: <Widget>[
        AllChats(),
        UnRead(),
        Personaly(),

      ],),
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 13,right: 80),
            child: Text('Telegram',style: TextStyle(fontSize: 20),),
          ),
          SizedBox(width: 100,),
          IconButton(
            onPressed: (){Navigator.push(context, MaterialPageRoute(
              builder: (context)=> Search()
            ));},
            icon: Icon(Icons.search,size: 23,color: Theme.of(context).canvasColor,),
          ),
        ],
        backgroundColor: Theme.of(context).errorColor,
        bottom: TabBar(
          controller: _tabController,
          onTap: (index){},
          indicatorColor: Theme.of(context).canvasColor,
          indicatorSize: TabBarIndicatorSize.label,
          labelPadding: EdgeInsets.symmetric(vertical: 10),
          tabs: <Widget>[
            Text('All chats',style: TextStyle(fontSize: 17),),
            Text('غير المقروءة',style: TextStyle(fontSize: 17),),
            Text('شخصي',style: TextStyle(fontSize: 17),),
          ],
        ),
      ),
    );
  }
}
