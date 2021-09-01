import 'package:flutter/material.dart';

class Dmc extends StatefulWidget {
  @override
  _DmcState createState() => _DmcState();
}

class _DmcState extends State<Dmc> {
  var formKey = GlobalKey<FormState>();
  String eng, phy, math, sci, geo;
  var obtMarks = '';
  var percentage = '';
  var grade = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report a missing child'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Name',
                      labelText: 'Name of the child',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  validator: (text) {
                    if (text.isEmpty) {
                      return 'please enter name';
                    } else {
                      eng = text;
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Age',
                      labelText: 'Age of the child',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  validator: (text) {
                    if (text.isEmpty) {
                      return 'please enter age';
                    } else {
                      phy = text;
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Last day',
                      labelText: 'When last was she/he seen?',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  validator: (text) {
                    if (text.isEmpty) {
                      return 'please provide the date';
                    } else {
                      math = text;
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Outfit',
                      labelText: 'What was she/he wearing?',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  validator: (text) {
                    if (text.isEmpty) {
                      return 'please provide details';
                    } else {
                      sci = text;
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Contact numbers',
                      labelText: 'Enter contact numbers',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  validator: (text) {
                    if (text.isEmpty) {
                      return 'please provide details required';
                    } else {
                      geo = text;
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),

                    SizedBox(
                      width: 16,
                    ),

                  ],
                ),




            ),
          ),
        ),
    );


  }
}
