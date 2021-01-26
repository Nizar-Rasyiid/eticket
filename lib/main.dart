import 'package:eticket/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Sign Up'),
                onPressed: () async {
                  SignInSignUpResult result = await AuthServices.signUp(
                    "nizarrasyiid1221@gmail.com",
                    "smkBisa123",
                    "Nizar",
                    ["Action","War","Romance"],
                    "Indonesia"
                  );
                  
                  if (result.user == null) {
                    print(result.message);
                  }else{
                    print(result.user.toString());
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
