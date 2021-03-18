// part of 'pages.dart';

// class DetailPage extends StatefulWidget {
//   @override
//   _DetailPageState createState() => _DetailPageState();
// }

// class _DetailPageState extends State<DetailPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(children: [
//       Container(
//         height: 300,
//         width: MediaQuery.of(context).size.width * 1,
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: NetworkImage(
//                     "https://image.freepik.com/free-photo/chopsticks-pick-up-tasty-noodles-with-smoke-dark-background-ramen-white-bowl_79161-418.jpg"),
//                 fit: BoxFit.fill),
//                 ),
//         child: Stack(
//         alignment: Alignment.topLeft, 
//         children: [
//           Container(
//             margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
//             padding: EdgeInsets.all(10),
//             child: Icon(Icons.close, color: Colors.white),
//             decoration: BoxDecoration(
//               color: Colors.black38,
//               shape: BoxShape.circle,
//             ),
//           ),
//           Padding(
//               padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Nama Makanan",
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       Text("Rp 20.000",
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold)),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     "Deskripsi Makanan Ini",
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     children: [
//                       Text(
//                         "Instruksi Khusus",
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(width: 20),
//                       Text(
//                         "Tidak Wajib",
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   TextField(
//                     decoration: InputDecoration(
//                         hintText: "Mas jangan terlalu pedas ya"),
//                   ),
//                   SizedBox(height: 50),
//                   Row(
//                     children: [
//                       Container(
//                         width: 40,
//                         child: Center(
//                           child: Text("-",
//                               style: TextStyle(
//                                   fontSize: 40,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color.fromRGBO(100, 85, 194, 1))),
//                         ),
//                         decoration: BoxDecoration(
//                           border: Border.all(color:Colors.grey)
//                         ),
//                       ),
//                       SizedBox(width: 20,),
//                      Text("0",
//                               style: TextStyle(
//                                   fontSize: 40,
//                                   fontWeight: FontWeight.bold,
//                                   )),
                                  
//                       SizedBox(width: 20,),
//                                   Container(
//                         width: 40,
//                         child: Center(
//                           child: Text("+",
//                               style: TextStyle(
//                                   fontSize: 40,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color.fromRGBO(100, 85, 194, 1))),
//                         ),
//                         decoration: BoxDecoration(
//                           border: Border.all(color:Colors.grey)
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               )),
//         ]),
//       )
//     ]
//     ),
//     floatingActionButton: RaisedButton(

//        color: Color.fromRGBO(100, 85, 194, 1),
//        padding: EdgeInsets.symmetric(horizontal: 20,vertical:10),
//        child: Text("Tambahkan Ke Keranjang",style: TextStyle(fontSize:30,color:Colors.white)),
//        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//              onPressed: () {},
//     ),
//     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }

part of 'pages.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
          children: [
            Container(
              height: size.height * .3,
              width: size.width * 1,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://image.freepik.com/free-photo/fried-rice-nasi-goreng-indonesian-dish_262958-1512.jpg"),
                    fit: BoxFit.fill),
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        size.height * .01, size.height * .02, 0, 0),
                    padding: EdgeInsets.all(size.height * .01),
                    child: Icon(Icons.close, color: Colors.white),
                    decoration: BoxDecoration(
                        color: Colors.black38, shape: BoxShape.circle),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  size.height * .02, size.height * .02, size.height * .02, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nasi Goreng",
                          style: TextStyle(
                              fontSize: size.height * .03,
                              fontWeight: FontWeight.bold)),
                      Text("Rp 20.000",
                          style: TextStyle(
                              fontSize: size.height * .03,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: size.height * .02),
                  Text("Nasi Goreng Enak",
                      style: TextStyle(fontSize: size.height * .018)),
                  SizedBox(height: size.height * .02),
                  Row(
                    children: [
                      Text("Insturksi Khusus",
                          style: TextStyle(
                              fontSize: size.height * .03,
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: size.width * .04),
                      Text("Tidak Wajib",
                          style: TextStyle(fontSize: size.height * .018)),
                    ],
                  ),
                  TextField(
                    decoration:
                        InputDecoration(hintText: "Mas jangan terlalu pedes ya"),
                  ),
                  SizedBox(height: size.height * .04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * .06,
                        child: Center(
                          child: Text("-",
                              style: TextStyle(
                                  fontSize: size.height * .04,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red)),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                      ),
                      SizedBox(width: size.width * .02),
                      Text("0",
                          style: TextStyle(
                              fontSize: size.height * .04,
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: size.width * .02),
                      Container(
                          width: size.width * .06,
                          child: Center(
                            child: Text("+",
                                style: TextStyle(
                                    fontSize: size.height * .04,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(100, 85, 194, 1))),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        floatingActionButton: RaisedButton(
          
          color: Color.fromRGBO(100, 85, 194, 1),
          padding: EdgeInsets.symmetric(
              horizontal: size.height * .02, vertical: size.height * .02),
          child: Text("Tambahkan Ke Keranjang",
              style:
                  TextStyle(fontSize: size.height * .02, color: Colors.white)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(size.height * .03)),
              onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Account")
          ],
          type: BottomNavigationBarType.fixed,
          fixedColor: Color.fromRGBO(100, 85, 194, 1),
        ));
  }
}

