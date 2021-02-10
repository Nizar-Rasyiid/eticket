part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 80),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello!",
                  style: TextStyle(
                      color: Color.fromRGBO(66, 62, 92, 1),
                      fontSize: 40,
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                      color: Color.fromRGBO(66, 62, 92, 1),
                      fontSize: 35,
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "back",
                  style: TextStyle(
                      color: Color.fromRGBO(66, 62, 92, 1),
                      fontSize: 35,
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: ListView(
                children: [
                  SizedBox(
                    height: 49,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email Address",
                        hintStyle: TextStyle(color: Colors.grey),
                        fillColor: Color.fromRGBO(100, 85, 194, 0.4),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(100, 85, 194, 0.4)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(100, 85, 194, 0.4)),
                        ),
                      ),
                      style: TextStyle(fontSize: 18),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Text("Forgot Password?",style: TextStyle(color:Color.fromRGBO(100, 85, 194, 1), fontSize: 13,),),

                      GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ForgetPasswordPage();
                            }));
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Color.fromRGBO(100, 85, 194, 1),
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(
                                  width: 19,
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                  SizedBox(height: 18),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MainPage();
                          AuthServices.signIn(
                              "nizarrasyiid1221@gmail.com", "smkBisa123");
                        }));
                      },
                      child: Container(
                        height: 70,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(100, 85, 194, 1),
                            borderRadius: BorderRadius.circular(17)),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 36,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 15),
                      Text(
                        "Dont Have an Account? ",
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SignUpPage();
                          }));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Color.fromRGBO(100, 85, 194, 1),
                              fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
