import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:url_launcher/url_launcher.dart';

class DonorListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Donor List"),
        backgroundColor: Color(0xffe0172b),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('BANK').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Text("Loading...");

          return new ListView(children: getUserData(snapshot));
        },
      ),
    );
  }

//  getUserData(AsyncSnapshot<QuerySnapshot> snapshot) {
//    return snapshot.data.documents
//        .map((doc) => new ListTile(
//              title: new Text(doc["fullname"]),
//            ))
//        .toList();
//  }

  getUserData(AsyncSnapshot<QuerySnapshot> snapshot) {
    return snapshot.data.documents
        .map((doc) => new ListTile(
              title: new ExpansionTileCard(
                leading: CircleAvatar(
                    backgroundColor: Color(0xffe0172b),
                    child: Text(
                      doc["fullname"].substring(0, 1).toUpperCase(),
                      style: TextStyle(color: Colors.white),
                    )),
                title: Text(
                  doc["fullname"],
                  style: TextStyle(fontSize: 18),
                ),
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.opacity,
                                  color: Color(0xffe0172b),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(doc["bloodgroup"])
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.home,
                                  color: Color(0xffe0172b),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(doc["district"])
                              ],
                            ),
                          ],
                        )),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceAround,
                    buttonHeight: 52.0,
                    buttonMinWidth: 90.0,
                    children: <Widget>[
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)),
                        onPressed: () {},
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.call,
                              color: Color(0xffe0172b),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 2.0),
                            ),
                            Text(
                              'Call',
                              style: TextStyle(
                                color: Color(0xffe0172b),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)),
                        onPressed: () {},
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.message,
                              color: Color(0xffe0172b),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 2.0),
                            ),
                            Text(
                              'Message',
                              style: TextStyle(
                                color: Color(0xffe0172b),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)),
                        onPressed: () {},
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.share,
                              color: Color(0xffe0172b),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 2.0),
                            ),
                            Text(
                              'Share',
                              style: TextStyle(
                                color: Color(0xffe0172b),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ))
        .toList();
  }
}
