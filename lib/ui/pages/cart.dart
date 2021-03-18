part of 'pages.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}



class _CartState extends State<Cart> {
 TextEditingController address = TextEditingController();
 var scaffoldKey=GlobalKey<ScaffoldState>();
  void _showSimpleDialog(context) {
  showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Tambah Alamat Lengkap",
                    style:  TextStyle(
                                        fontSize: 15.0,
                              fontWeight: FontWeight.w500),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
         SizedBox(height:10),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Alamat Lengkap",
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            child: TextField(
              controller: address,
              style: new TextStyle(
                  fontSize: 14.0, height: 1.0, color: Colors.black),
              decoration: new InputDecoration(
                hintText: "Alamat",
                border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(15)),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 14.0, horizontal: 15.0),
              ),
            ),
          ),
          SizedBox(height:20),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
            child: RaisedButton(
              color: Colors.indigo,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text("Simpan",
                  style: TextStyle(fontSize: 15, color: Colors.white)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      );
    },
  );
}
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key:scaffoldKey,
      drawer: Drawer(
        child:ListView(
          children:[
            UserAccountsDrawerHeader(
              accountName: new Text("Foodies"),
              accountEmail: new Text("nizarrasyiid@yag.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: NetworkImage("https://cdn0.iconfinder.com/data/icons/kameleon-free-pack-rounded/110/Food-Dome-512.png")
              ),
              decoration: BoxDecoration(
               color: Colors.blue[300],
              )
              ),
              ListTile(
                title: Text("Utama", style: TextStyle(fontSize: 24)),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Beranda"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Pemberitahuan"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () async{
                  await AuthServices.signOut();

                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignInPage();
                  }));
                },
              ),
          ]
        ),
        ),
      body: ListView(
        children: [
          Padding(
        padding: EdgeInsets.fromLTRB(
            size.height * .02, size.height * .05, size.height * .02, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                GestureDetector(
                  onTap: (){
                    scaffoldKey.currentState.openDrawer();
                  },
                  child: SvgPicture.asset("assets/icons/menu.svg")
                  
                  ),
               
                IconButton(
                  icon: Icon(Icons.delete_outline),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Pesanan",
              style: TextStyle(fontSize: size.height * .023),
            ),
            Text(
              "Saya",
              style: TextStyle(
                  fontSize: size.height * .04, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * .015,
            ),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Icon(Icons.place,
                          color: Color.fromRGBO(251, 109, 58, 1), size: 40),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            address.text,
                            style: TextStyle(
                                fontSize: size.height * .035,
                                fontWeight: FontWeight.bold),
                          ),
                          
                        ],
                      )
                    ]),
              ),
              onTap: (){
                _showSimpleDialog(context);
              },
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: listCart.length,
                itemExtent: 80,
                itemBuilder: (context, i) {
                  return ListTile(
                    subtitle: Text("Rp" + listCart[i]['price'].toString(),
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(100, 85, 194, 1))),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(listCart[i]['images']),
                      radius: 30,
                    ),
                    title: Text(listCart[i]['name'].toString(),
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(100, 85, 194, 1))),
                            trailing: Container(
                              padding: EdgeInsets.all(10),
                              child:Text(listCart[i]['qty'].toString() + "x",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(100, 85, 194, 1))),
                            decoration: BoxDecoration(
                              border:Border.all(color: Colors.grey[300])
                            ),
                            ),
                  );
                },
              ),
            ),
              SizedBox(height: 10,),
                Text(
              "Metode Pembayaran",
              style: TextStyle(
                  fontSize: size.height * .03, fontWeight: FontWeight.bold),
            ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Tunai".toString(),
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(100, 85, 194, 1))),
                             Text("200.000".toString(),
                        style: TextStyle(
                            fontSize: 20,
                            )),
                            Text("|".toString(),
                        style: TextStyle(
                            fontSize: 20,
                            color:Colors.grey[300],
                            fontWeight: FontWeight.bold,
                            )),
                          Text("200.000".toString(),
                        style: TextStyle(
                            fontSize: 15,
                            color:Colors.grey[300],
                            fontWeight: FontWeight.bold,
                            )),
                            Text("Tambahin",
                        style: TextStyle(
                            fontSize: 15,
                            color:Colors.grey[300],
                            fontWeight: FontWeight.bold,
                            )),
                             Text("Promo",
                        style: TextStyle(
                            fontSize: 15,
                            color:Colors.grey[300],
                            fontWeight: FontWeight.bold,
                            )),
  

                  ]),
                  
            ),
            SizedBox(height:30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Pesanan",
                          style: TextStyle(
                              fontSize: size.height * .02,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold)),
                      Text("Rp 200.000",
                          style: TextStyle(
                              fontSize: size.height * .02,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: size.height * .03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Ongkos Kirim",
                          style: TextStyle(
                              fontSize: size.height * .02,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold)),
                      Text("Gratis",
                          style: TextStyle(
                              fontSize: size.height * .02,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: size.height * .03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total",
                          style: TextStyle(
                              fontSize: size.height * .03,
                              fontWeight: FontWeight.bold)),
                      Text("Rp 200.000",
                          style: TextStyle(
                              fontSize: size.height * .03,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: size.height * .02),
                  RaisedButton(
                      color: Colors.purple,
                      padding: EdgeInsets.symmetric(
                        horizontal: size.height * .13,
                        vertical: size.height * .02,
                      ),
                      child: Text("Pesan Sekarang >",
                          style: TextStyle(
                              fontSize: size.height * .02,
                              color: Colors.white)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {})
                ],
              ),
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "Account",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          fixedColor: Color.fromRGBO(100, 85, 194, 1)),
    );
  }
}
