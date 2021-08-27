import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../main.dart';
import 'HomePage.dart';

class AddUserPage extends StatefulWidget {
  @override
  _AddUserPageState createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  String id;
  final db = Firestore.instance;
  final _formKey = GlobalKey<FormState>();
  String fullName;
  String phoneNumber;
  String emailId;
  String district;
  String bloodGroup;
  double screenHeight;
  int showVal;
  int value = 23;
  var selectedBG;

  List<String> _bloodGroup = <String>[
    'A+ve',
    'A-ve',
    'B+ve',
    'B-ve',
    'O+ve',
    'O-ve',
    'AB+ve',
    'AB-ve',
  ];

  List<String> _districts = <String>[
    'Kasaragod',
    'Kannur',
    'Kozhikode',
    'Wayanad',
    'Malappuram',
  ];

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffe0172b),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: registerCard(context),
        ),
      ),
    );
  }

  Widget registerCard(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: screenHeight / 8),
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 16,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Name", hasFloatingPlaceholder: true),
                    onChanged: (text) {
                      fullName = text;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Email", hasFloatingPlaceholder: true),
                    onChanged: (text) {
                      emailId = text;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Phone", hasFloatingPlaceholder: true),
                    onChanged: (text) {
                      phoneNumber = text;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                                style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.all(Radius.circular(26.0)),
                          ),
                        ),
                        padding: EdgeInsets.only(left: 10),
                        height: 42,
                        child: DropdownButton(
                          underline: SizedBox(
                            width: 0.0,
                          ),
                          items: _bloodGroup
                              .map((value) => DropdownMenuItem(
                                    child: Text(
                                      value,
                                    ),
                                    value: value,
                                  ))
                              .toList(),
                          onChanged: (selectedAccountType) {
                            print('$selectedAccountType');
                            setState(() {
                              bloodGroup = selectedAccountType;
                            });
                          },
                          value: bloodGroup,
                          isExpanded: false,
                          hint: Text(
                            'Blood Group',
                          ),
                        ),
                      ),
                      Container(
                        height: 42,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                                style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.all(Radius.circular(26.0)),
                          ),
                        ),
                        padding: EdgeInsets.only(left: 10),
                        child: DropdownButton(
                          underline: SizedBox(
                            width: 0.0,
                          ),
                          items: _districts
                              .map((value) => DropdownMenuItem(
                                    child: Text(
                                      value,
                                    ),
                                    value: value,
                                  ))
                              .toList(),
                          onChanged: (selectedAccountType) {
                            print('$selectedAccountType');
                            setState(() {
                              district = selectedAccountType;
                            });
                          },
                          value: district,
                          isExpanded: false,
                          hint: Text(
                            'District',
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Age",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Expanded(
                        child: Container(
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              trackHeight: 2.0,
                            ),
                            child: Slider(
                              value: value.toDouble(),
                              min: 18.0,
                              label: value.toString(),
                              divisions: 42,
                              activeColor: Color(0xffeb1555),
                              inactiveColor: Color(0xff8d8e98),
                              max: 60.0,
                              onChanged: (double newValue) {
                                setState(() {
                                  value = newValue.round();
                                  print(value);
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        child: Text("Submit"),
                        color: Color(0xffe0172b),
                        textColor: Colors.white,
                        padding: EdgeInsets.only(
                            left: 38, right: 38, top: 15, bottom: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () {
                          createData();
                          Alert(
                            context: context,
                            type: AlertType.success,
                            title: "RFLUTTER ALERT",
                            desc:
                                "Flutter is more awesome with RFlutter Alert.",
                            buttons: [
                              DialogButton(
                                child: Text(
                                  "COOL",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                width: 120,
                              )
                            ],
                          ).show();
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void createData() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      DocumentReference ref = await db.collection('BANK').add({
        'fullname': '$fullName',
        'phonenumber': '$phoneNumber',
        'emailid': '$emailId',
        'bloodgroup': '$bloodGroup',
        'district': '$district',
        'age': '$value'
      });
      setState(() => id = ref.documentID);
      print(ref.documentID);
    }
  }
}
