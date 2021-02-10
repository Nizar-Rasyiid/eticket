part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Main Page"),backgroundColor: Colors.blue[700],),
      body: Center(
        child: RaisedButton(
          child: Text("Sign Out"),
          onPressed: (){
            AuthServices.signOut();
            Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignInPage();
                        }));
          }
        ),
      ),
    );
  }
}