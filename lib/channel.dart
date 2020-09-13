import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class NewChannel extends StatefulWidget {
  @override
  _NewChannelState createState() => _NewChannelState();
}
class _NewChannelState extends State<NewChannel> {
  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery,);

    setState(() {
      _image = File(pickedFile.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back)),
        backgroundColor: Theme.of(context).errorColor,
        title: Text('New Channel'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.beenhere),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: (){getImage();},
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(color: Theme.of(context).primaryColor,borderRadius: BorderRadius.circular(30)),
                  child: Icon(Icons.camera_alt,color: Theme.of(context).canvasColor,),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: 250,
                  height: 30,
                  child: TextFormField(
                    autofocus: false,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.insert_emoticon,),
                        hintText: 'Channel Name',
                  ),
                ),
              )
              )],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: ('Description')),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 25,left: 25),
            child: Text('You can provide an optional describtion for your channel.',style: TextStyle(fontSize: 15,color: Theme.of(context).accentColor),),
          ),
        ],
      ),
    );
  }
}
