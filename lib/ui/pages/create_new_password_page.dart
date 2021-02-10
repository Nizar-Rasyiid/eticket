part of 'pages.dart';

class CreateNewPasswordPage extends StatefulWidget {
  @override
  _CreateNewPasswordPage createState() => _CreateNewPasswordPage();
}

class _CreateNewPasswordPage extends State<CreateNewPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.grey[200],
  leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Color.fromRGBO(66, 62, 92, 1)),
    onPressed: () => Navigator.of(context).pop(),
  ), 
  title: Text("Back",style: TextStyle(color: Color.fromRGBO(66, 62, 92, 1),fontWeight: FontWeight.w500),),
  elevation: 0,
),
      body:  Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Create New Password",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      color: Color.fromRGBO(66, 62, 92, 1),
                      fontSize: 30,
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Your new password must be different from the previous used passwords.",
                  maxLines: 2,
                  style: TextStyle(
                      color: Color.fromRGBO(100, 85, 194, 1),
                      fontSize: 15,
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(height: 45,),
                 Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        fillColor: Color.fromRGBO(100, 85, 194, 0.4),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(100, 85, 194, 0.4)),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 7,),
                  Padding(padding: EdgeInsets.only(left:10),
                  child: Text("Must be at least 8 characters",
                  style: TextStyle(
                    color:Color.fromRGBO(156,156,156,0.9),
                  ),
                  ),
                  ),
                  
                  SizedBox(height: 18,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        fillColor: Color.fromRGBO(100, 85, 194, 0.4),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(100, 85, 194, 0.4)),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                 SizedBox(height: 7,),
                  Padding(padding: EdgeInsets.only(left:10),
                  child: Text("Both Must Match.",
                  style: TextStyle(
                    color:Color.fromRGBO(156,156,156,0.9),
                  ),
                  ),
                  ),
                  SizedBox(height: 16,),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MainPage();
                        }));
                      },
                      child: Container(
                        height: 70,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(100, 85, 194, 1),
                            borderRadius: BorderRadius.circular(17)),
                        child: Center(
                          child: Text(
                            "Reset Password",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      )),
              ],
            ),
          ),
        ],
      ),
    )
    );
  }
}
