part of 'pages.dart';

class ForgetPasswordPage extends StatefulWidget {
  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  TextEditingController emailText = TextEditingController();

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
        body: Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 43),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Reset Password",
                  style: TextStyle(
                      color: Color.fromRGBO(66, 62, 92, 1),
                      fontSize: 35,
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Enter the email associated with your account",
                  style: TextStyle(
                      color: Color.fromRGBO(100, 85, 194, 1),
                      fontSize: 15,
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.w100),
                ),
                Text(
                  "and we'll send an email with instructions to",
                  style: TextStyle(
                      color: Color.fromRGBO(100, 85, 194, 1),
                      fontSize: 15,
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.w100),
                ),
                Text(
                  "reset your password.",
                  style: TextStyle(
                      color: Color.fromRGBO(100, 85, 194, 1),
                      fontSize: 15,
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(height: 42,),
                 Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: TextField(
                      controller: emailText,
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
                  SizedBox(height: 19,),
                  GestureDetector(
                     onTap: () {
                          
                         try {
                           AuthServices.resetPassword(emailText.text);
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                              
                            return CheckEmailPage();
                          }));
                         } catch (e) {
                           throw 'gagal';
                         }
                        },
                     
                      child: Container(
                        height: 70,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(100, 85, 194, 1),
                            borderRadius: BorderRadius.circular(17)),
                        child: Center(
                          child: Text(
                            "Send instructions",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
