//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//import '../widgets/progress.dart';
import '../widgets/header.dart';

//final usersRef = Firestore.instance.collection('users');

class TimelineScreen extends StatefulWidget {
  @override
  _TimelineScreenState createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  // @override
  // void initState() {
  //   //getUsers();
  //   getUsersById();
  //   super.initState();
  // }

  // getUsers() {
  //   usersRef.getDocuments().then((QuerySnapshot snapshot) {
  //     snapshot.documents.forEach((DocumentSnapshot doc) {
  //       print(doc.data);
  //     });
  //   });
  // }

  // getUsersById() {
  //   final String id = "S5sOxQQggGNZ0MeaBHb6";
  //   usersRef.document(id).get().then((DocumentSnapshot doc) {
  //     print(doc.data);
  //     print(doc.documentID);
  //     print(doc.exists);
  //   });
  // }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: header(context, isAppTitle: true),
      // body: circularProgress(),
    );
  }
}
