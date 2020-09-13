import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_gifs/loading_gifs.dart';
import 'package:telegram/gif.dart';
import 'package:image_picker/image_picker.dart';

class ChatIn extends StatefulWidget {
  @override
  _ChatInState createState() => _ChatInState();
}

class _ChatInState extends State<ChatIn> {

  _sendMessageArea(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
          color: Theme.of(context).canvasColor,
        child: Row(
          children: <Widget>[
            InkWell(

                child: IconButton(icon: Icon(Icons.gif),iconSize: 25,onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Gif()));},color: Theme.of(context).accentColor,)),
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: 'Send A Message'),
                textCapitalization: TextCapitalization.sentences,
              ),
            ),
            IconButton(icon: Icon(Icons.keyboard_voice),iconSize: 25,onPressed: (){},color: Theme.of(context).accentColor,),
            IconButton(icon: Icon(Icons.photo),iconSize: 25,onPressed: (){},color: Theme.of(context).accentColor,),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Theme.of(context).primaryColor,
       title: Row(
         children: <Widget>[
           Container(
             width: 35,
             height: 35,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),
             image:DecorationImage(image: NetworkImage('https://image.freepik.com/free-photo/mand-holding-cup_1258-340.jpg'),fit: BoxFit.fill),
             ),
           ),
           SizedBox(width: 20,),
           Text('Ahmed',style: TextStyle(fontSize: 15,color: Theme.of(context).canvasColor),),
           SizedBox(width: 160,),
           Icon(Icons.settings,color: Theme.of(context).canvasColor,)
         ],
       ),
     ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _sendMessageArea()
        ],
      ),
    );
  }
}
