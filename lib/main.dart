import 'package:eticket/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'ui/pages/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.userStream,
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(
        
      )
    ),
    );
  }
}


//  "nizarrasyiid1221@gmail.com",
//                     "smkBisa123"