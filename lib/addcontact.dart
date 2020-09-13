import 'package:flutter/material.dart';

import 'package:country_code_picker/country_code_picker.dart';

class AddContact extends StatefulWidget {
  @override
  _AddContactState createState() => _AddContactState();
}
class _AddContactState extends State<AddContact> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Add Contact'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.beenhere),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                color: Theme.of(context).primaryColor,
        ),
      ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
                            hintText: 'First name (required)',hintStyle: TextStyle(fontSize: 18,color: Theme.of(context).accentColor)
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
                            hintText: 'Last name (optional)',hintStyle: TextStyle(fontSize: 18,color: Theme.of(context).accentColor)
                        ),
                      ),
                    ),
                  ],
                ),
              )
  ]
    ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 60,
                      child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: CountryCodePicker(
                              initialSelection: 'IN',
                              showCountryOnly: true,
                              showFlag: true,
                          ),
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor))
                          ),
                        ),
                    ),
                     SizedBox(width: 30,),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width-120,
                      child: TextFormField(
                        controller: TextEditingController(),
                        decoration: InputDecoration(labelText: '   --   ----   ----',labelStyle: TextStyle(fontSize: 20,color: Theme.of(context).accentColor),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor))
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
    ],
      ),
    );
  }
}
