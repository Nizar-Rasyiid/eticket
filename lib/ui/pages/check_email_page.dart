part of 'pages.dart';

class CheckEmailPage extends StatefulWidget {
  @override
  _CheckEmailPage createState() => _CheckEmailPage();
}

class _CheckEmailPage extends State<CheckEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.1),
                            spreadRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Image.asset('assets/images/Vector.png'),
                    ),
                  ],
                )),
            SizedBox(
              height: 19,
            ),
            Text(
              "Check Your Mail",
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromRGBO(66, 62, 92, 1),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "We have sent a password recover",
              style: TextStyle(
                  color: Color.fromRGBO(100, 85, 194, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            Text(
              "instructions to your email.",
              style: TextStyle(
                  color: Color.fromRGBO(100, 85, 194, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            SizedBox(height: 46),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignInPage();
                  }));
                },
                child: Container(
                  height: 70,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(100, 85, 194, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Open email app",
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                )),
            SizedBox(
              height: 22,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CreateNewPasswordPage();
                }));
              },
              child: Text(
                "Skip,I'll confirm later",
                style: TextStyle(
                    color: Color.fromRGBO(100, 85, 194, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
