part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
            padding: EdgeInsets.only(left:20),
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
                  "Signup to",
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
                  "get started",
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
                  SizedBox(height: 20,),
                       Container(
                         
                       padding: EdgeInsets.symmetric(horizontal: 20),
                        
                        decoration: BoxDecoration(),
                        child: TextField(
                          scrollPadding: EdgeInsets.only(right: 5),
                          decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Color.fromRGBO(100, 85, 194, 0.4),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(100, 85, 194, 0.4)),
                            ),
                          ),
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(),
                        child: TextField(
                          scrollPadding: EdgeInsets.only(right: 5),
                          decoration: InputDecoration(
                            hintText: "Phone Number",
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Color.fromARGB(09, 156, 156, 156),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(100, 85, 194, 0.4)),
                            ),
                          ),
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                       SizedBox(height: 20,),
                      Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(),
                        child: TextField(
                          scrollPadding: EdgeInsets.only(right: 5),
                          decoration: InputDecoration(
                            hintText: "Email Address",
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Color.fromARGB(09, 156, 156, 156),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(100, 85, 194, 0.4)),
                            ),
                          ),
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(height: 20,),
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
                      SizedBox(height: 20),
                      GestureDetector(onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context){
                                 return MainPage();
                               }));
                             },
                             child: Container(
                               height: 70,
                               margin: EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                              color: Color.fromRGBO(100,85,194,1),
                              borderRadius: BorderRadius.circular(17)),
                                  child: Center(  
                                     child: Text(
                                        "Create an Account",
                                        style: TextStyle(
                                          color: Color.fromRGBO(255,255,255,1),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                           ),
                                            ),

                             )
                             ),
                      
                        //    Container(
                        //   height: 70,
                        //   margin: EdgeInsets.symmetric(horizontal: 20),
                        //   decoration: BoxDecoration(
                        //       color: Color.fromRGBO(100,85,194,1),
                        //       borderRadius: BorderRadius.circular(17)),
                        //   child: Center(
                        //     child: Text(
                        //       "Create an Account",
                        //       style: TextStyle(
                        //           color: Colors.white,
                        //           fontWeight: FontWeight.bold,
                        //           fontSize: 20),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 10),
                              Text(
                                "Already Have an Account? ",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                             GestureDetector(onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context){
                                 return SignInPage();
                               }));
                             },
                             child:  Text(
                                "Sign In",
                                style: TextStyle(color: Color.fromRGBO(100, 85, 194, 1), fontSize: 13),
                              ),
                             ),
                        ],
                        ),
                        
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

//   appBar: AppBar(title: Text("Sign In Page")),
//   body: Center(
//     child: RaisedButton(
//       child: Text("Sign In"),
//       onPressed: (){
//         AuthServices.signIn( "nizarrasyiid1221@gmail.com", "smkBisa123");
//       }
//     ),
//   ),


              // child: ListView(
              //   children: [
              //     Column(
              //       children: [
              //         SizedBox(
              //           height: 10,
              //         ),
                      
              //         Container(
              //           padding: EdgeInsets.all(10),
              //           decoration: BoxDecoration(),
              //           child: TextField(
              //             scrollPadding: EdgeInsets.only(right: 5),
              //             decoration: InputDecoration(
              //               hintText: "Username",
              //               hintStyle: TextStyle(color: Colors.grey),
              //               fillColor: Color.fromRGBO(100, 85, 194, 0.4),
              //               border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(15),
              //                 borderSide: BorderSide(
              //                     color: Color.fromRGBO(100, 85, 194, 0.4)),
              //               ),
              //             ),
              //             style: TextStyle(fontSize: 18),
              //           ),
              //         ),
              //         Container(
              //           padding: EdgeInsets.all(10),
              //           decoration: BoxDecoration(),
              //           child: TextField(
              //             scrollPadding: EdgeInsets.only(right: 5),
              //             decoration: InputDecoration(
              //               hintText: "Email Address",
              //               hintStyle: TextStyle(color: Colors.grey),
              //               fillColor: Color.fromARGB(09, 156, 156, 156),
              //               border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(15),
              //                 borderSide: BorderSide(
              //                     color: Color.fromRGBO(100, 85, 194, 0.4)),
              //               ),
              //             ),
              //             style: TextStyle(fontSize: 18),
              //           ),
              //         ),
              //         Container(
              //           padding: EdgeInsets.all(10),
              //           decoration: BoxDecoration(
              //             border: Border(
              //               bottom: BorderSide(color: Colors.white),
              //             ),
              //           ),
              //           child: TextField(
              //             decoration: InputDecoration(
              //               hintText: "Password",
              //               hintStyle: TextStyle(color: Colors.grey),
              //               fillColor: Colors.white,
              //               border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(15),
              //                 borderSide: BorderSide(
              //                     color: Color.fromRGBO(100, 85, 194, 0.4)),
              //               ),
              //             ),
              //             style: TextStyle(fontSize: 18),
              //             obscureText: true,
              //           ),
              //         ),
              //         SizedBox(height: 5),
              //         GestureDetector(

              //         ),
              //         Row(mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             SizedBox(height: 30),
              //                 Text(
              //                   "Already Have an Account? ",
              //                   style:
              //                       TextStyle(color: Colors.grey, fontSize: 13),
              //                 ),
              //                GestureDetector(onTap: () {
              //                  Navigator.push(context, MaterialPageRoute(builder: (context){
              //                    return SignInPage();
              //                  }));
              //                },
              //                child:  Text(
              //                   "Sign In",
              //                   style: TextStyle(color: Color.fromRGBO(100, 85, 194, 1), fontSize: 13),
              //                 ),
              //                )
              //           ],
              //         )
              //       ],
              //     ),
              //   ],
              // ),


              // Column(
              //       children: [
              //         SizedBox(
              //           height: 10,
              //         ),
                      
              //         Container(
              //           padding: EdgeInsets.all(10),
              //           decoration: BoxDecoration(),
              //           child: TextField(
              //             scrollPadding: EdgeInsets.only(right: 5),
              //             decoration: InputDecoration(
              //               hintText: "Username",
              //               hintStyle: TextStyle(color: Colors.grey),
              //               fillColor: Color.fromRGBO(100, 85, 194, 0.4),
              //               border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(15),
              //                 borderSide: BorderSide(
              //                     color: Color.fromRGBO(100, 85, 194, 0.4)),
              //               ),
              //             ),
              //             style: TextStyle(fontSize: 18),
              //           ),
              //         ),
              //         Container(
              //           padding: EdgeInsets.all(10),
              //           decoration: BoxDecoration(),
              //           child: TextField(
              //             scrollPadding: EdgeInsets.only(right: 5),
              //             decoration: InputDecoration(
              //               hintText: "Email Address",
              //               hintStyle: TextStyle(color: Colors.grey),
              //               fillColor: Color.fromARGB(09, 156, 156, 156),
              //               border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(15),
              //                 borderSide: BorderSide(
              //                     color: Color.fromRGBO(100, 85, 194, 0.4)),
              //               ),
              //             ),
              //             style: TextStyle(fontSize: 18),
              //           ),
              //         ),
              //         Container(
              //           padding: EdgeInsets.all(10),
              //           decoration: BoxDecoration(
              //             border: Border(
              //               bottom: BorderSide(color: Colors.white),
              //             ),
              //           ),
              //           child: TextField(
              //             decoration: InputDecoration(
              //               hintText: "Password",
              //               hintStyle: TextStyle(color: Colors.grey),
              //               fillColor: Colors.white,
              //               border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(15),
              //                 borderSide: BorderSide(
              //                     color: Color.fromRGBO(100, 85, 194, 0.4)),
              //               ),
              //             ),
              //             style: TextStyle(fontSize: 18),
              //             obscureText: true,
              //           ),
              //         ),
              //         SizedBox(height: 5),
              //         GestureDetector(

              //         ),
              //         Row(mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             SizedBox(height: 30),
              //                 Text(
              //                   "Already Have an Account? ",
              //                   style:
              //                       TextStyle(color: Colors.grey, fontSize: 13),
              //                 ),
              //                GestureDetector(onTap: () {
              //                  Navigator.push(context, MaterialPageRoute(builder: (context){
              //                    return SignUpPage();
              //                  }));
              //                },
              //                child:  Text(
              //                   "Sign In",
              //                   style: TextStyle(color: Color.fromRGBO(100, 85, 194, 1), fontSize: 13),
              //                 ),
              //                )
              //           ],
              //         )
              //       ],
              //     ),