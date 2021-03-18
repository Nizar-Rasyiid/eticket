part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
   var scaffoldKey=GlobalKey<ScaffoldState>();
  
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
               color: Colors.blue[800],
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
      body:
         Padding(
        padding: EdgeInsets.fromLTRB(size.height * .02, size.height * .05, size.height * .02, 0),
        child:Column(
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
              ],
            ),
            SizedBox(height: 15,),
            Text("Hai Nizar",style: TextStyle(fontSize: size.height * .023),),
            Text("Sudah Makan?",style: TextStyle(fontSize: size.height * .04, fontWeight: FontWeight.bold),),
            SizedBox(height: size.height * .015,),
            SizedBox(height: size.height * .3,
            width: MediaQuery.of(context).size.width ,
            child: Carousel(
              images:[
                NetworkImage('https://api-kantin.herokuapp.com/images/images_slider-1616029947865.jpg'),
                NetworkImage('https://api-kantin.herokuapp.com/images/images_slider-1616030130138.jpg'),
                NetworkImage('https://api-kantin.herokuapp.com/images/images_slider-1616030156869.png'),
              ],
              borderRadius: true,
              dotBgColor: Colors.transparent,
            ),
            ),
            SizedBox(height: size.height * .02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Kategori", style: TextStyle(fontSize: size.height * .030, fontWeight:FontWeight.bold),),
                Text("Lebih lengkap", style: TextStyle(fontSize: 15, color:Colors.orange),),

              ],
            ),
            SizedBox(height: size.height * .02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  decoration:BoxDecoration(
                    color: Color.fromRGBO(100,85,194,1),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(
                    child: Text("Semua",style: TextStyle(fontSize: 15, color:Colors.white),),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration:BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(
                    child: Image.asset('assets/img/hamburger.png',height: 20,color: Color.fromRGBO(100,85,194,1),),
                  ),
                ),
                 Container(
                  width: 50, 
                  height: 50,
                  decoration:BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(
                    child: Image.asset('assets/img/pizza.png',height: size.height * .020,color: Color.fromRGBO(100,85,194,1),),
                  ),
                ),
                 Container(
                  width: 50,
                  height: 50,
                  decoration:BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(
                    child: Image.asset('assets/img/noodles.png',height: 20,color: Color.fromRGBO(100,85,194,1),),
                  ),
                ),
                 Container(
                  width: 50,
                  height: 50,
                  decoration:BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(
                    child: Image.asset('assets/img/soft-drink.png',height: 20,color: Color.fromRGBO(100,85,194,1),),
                  ),
                ),
                
                
              ],
            ),
            SizedBox(height: size.height * .020,),
            Text("Rekomendasi Untuk Kamu", style: TextStyle(fontSize: size.height * .025, fontWeight:FontWeight.bold),),
            SizedBox(height: size.height * .020,),
            Expanded(
              child: StaggeredGridView.countBuilder(
                padding: EdgeInsets.all(0),
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: index.isEven ? 200 : 240,
                          decoration: BoxDecoration(
                            borderRadius:  BorderRadius.circular(16),
                            image: DecorationImage(
                              image: NetworkImage(listProduct[index]['images']),
                              fit: BoxFit.fill
                            )
                          ),
                          child: Stack(
                            alignment : Alignment.bottomLeft,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.white,
                                ),
                                child: Text(listProduct[index]['time']),

                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(listProduct[index]['name'],style: TextStyle(fontSize:15,fontWeight:FontWeight.w700),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star_border),
                                Text(listProduct[index]['rating'].toString(),style: TextStyle(fontSize:15,fontWeight:FontWeight.w700),),
                              ],
                            ),
                            Text("Rp " + listProduct[index]['price'].toString(),style: TextStyle(fontSize:15),)
                          ],
                        )
                      ],
                    ),
                  );
                },
                itemCount: listProduct.length,
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            )
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon : Icon(Icons.food_bank),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon : Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon : Icon(Icons.shop),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon : Icon(Icons.account_circle),
            label: "Account",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        fixedColor: Color.fromRGBO(100,85,194,1)
      ),
        
      
    );
  }
}
// Padding(
//         width: double.maxFinite,
//         margin: EdgeInsets.only(left:29),
//         child:ListView(children: [
//              Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(padding:EdgeInsets.only(left: 4),),
//             SizedBox(height: 85,),
//             Text("Hai Nizar",style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize:20),),
//             Text("Sudah Makan?",style:TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize:25),),
//             SizedBox(height: 15,),

//             // Container(
//             //   margin: EdgeInsets.fromLTRB(29,15,30,13),
//             //   width: 350,
//             //   height: 200,
//             //   decoration: BoxDecoration(
//             //     color:Colors.grey[100],
                
//             //   ),
//             //   child: Image.asset('assets/images/mobile.png',alignment: Alignment.centerRight,),
//             // )
        
//             SizedBox(
              
//   height: 200.0,
//   width: 350.0,
//   child: Carousel(
    
//     images: [
//      Image.network('https://media1.s-nbcnews.com/j/newscms/2018_07/1318715/grilled-steak-today-tease-180216_89508b219dd455b4d43311782841f938.today-inline-large.jpg'),
//      Image.network('http://kbu-cdn.com/dk/wp-content/uploads/mie-goreng-saus-tiram.jpg',),
     
//     ],
//     dotSize: 4.0,
//     dotSpacing: 15.0,
//     dotColor: Colors.purple,
//     indicatorBgPadding: 5.0,
//     dotBgColor: Colors.white.withOpacity(0.5),
//     borderRadius: true,
//   ),
// ),
// SizedBox(height: 13,),
// Align(alignment: Alignment.centerLeft,
//   child:Text('Kategori', style: TextStyle(fontFamily:'Poppins',fontWeight:FontWeight.w600,fontSize:20,),),
// ),

// Align(alignment: Alignment.centerRight,
//   child:Text('Lebih Lengkap', style: TextStyle(fontFamily:'Poppins',fontWeight:FontWeight.w600,fontSize:13,color: Colors.orange[200]),),
// ),
// SizedBox(height:15,),
//   Row(
//     crossAxisAlignment:CrossAxisAlignment.start,
//     children: [
//       Container(
//         width: 70,
//        margin: EdgeInsets.symmetric(vertical: 20),
//         height: 40,
//         padding: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Colors.purple[500],
//         ),
//         child: Text("Semua",style: TextStyle(fontFamily:'poppins',fontWeight:FontWeight.w500,fontSize:15,color: Colors.white),),

//       ),
//       SizedBox(width: 10,), 
//        Container(
//         width: 40,
//        margin: EdgeInsets.symmetric(vertical: 20),
//         height: 30,
//         padding: EdgeInsets.all(5),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: Colors.white,
//         ),
//         child: Image.asset('assets/img/pizza.png',color: Colors.purple,)
//       ),
//        SizedBox(width: 10,), 
//        Container(
//         width: 40,
//        margin: EdgeInsets.symmetric(vertical: 20),
//         height: 30,
//         padding: EdgeInsets.all(5),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: Colors.white,
//         ),
//         child: Image.asset('assets/img/kebab.png',color: Colors.purple,)
//       ),
//        SizedBox(width: 10,), 
//        Container(
//         width: 40,
//        margin: EdgeInsets.symmetric(vertical: 20),
//         height: 30,
//         padding: EdgeInsets.all(5),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: Colors.white,
//         ),
//         child: Image.asset('assets/img/noodles.png',color: Colors.purple,)
//       ),
//        SizedBox(width: 10,), 
//        Container(
//         width: 40,
//        margin: EdgeInsets.symmetric(vertical: 20),
//         height: 30,
//         padding: EdgeInsets.all(5),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: Colors.white,
//         ),
//         child: Image.asset('assets/img/soft-drink.png',color: Colors.purple,)
//       ),
//        SizedBox(width: 10,), 
//        Container(
//         width: 40,
//        margin: EdgeInsets.symmetric(vertical: 20),
//         height: 30,
//         padding: EdgeInsets.all(5),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: Colors.white,
//         ),
//         child: Image.asset('assets/img/hamburger.png',color: Colors.purple,)
//       ),
      
      
//     ],

//   )
//           ],
          
//         ),
//         ],)
         
//       ),