import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'main_page_elements/categories card.dart';

void main() {
  runApp(const main_page());
}


class main_page extends StatelessWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Container(
          color: Colors.grey.shade100,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Top Bar
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            borderRadius: BorderRadius.all(Radius.circular(60))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                image: DecorationImage(
                                  image: AssetImage("assets/women profile.jpg")
                                )
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text("Hi, Jenifer!",style: GoogleFonts.poppins(),),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade50,
                                    borderRadius: BorderRadius.all(Radius.circular(60))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(60)),
                                    ),
                                    child: Icon(Icons.notifications_active_outlined,color: Colors.deepOrangeAccent,),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 70),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Where do",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 30),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("you want to go?",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 30)),)),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Text("Search for places... ",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 13),),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(60)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 30.0,
                                          offset: Offset(15,15)
                                        )
                                      ]
                                    ),
                                    child: Icon(Icons.search,color: Colors.deepOrangeAccent,),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                SizedBox(height: 10,),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text("Categories",style: GoogleFonts.poppins(color: Colors.black87,fontSize: 17),),
                      )),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: 8,
                        itemBuilder: (context, i){
                          return categories_card(icon: Icons.home,);
                        }),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Text("Top Trips",style: GoogleFonts.poppins(color: Colors.black87,
                      fontSize: 17
                      ),),
                      Icon(Icons.arrow_drop_down,color: Colors.deepOrange,),
                      Expanded(child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text("Explore",style: GoogleFonts.poppins(color: Colors.grey),))),
                          Icon(Icons.arrow_drop_down,color: Colors.deepOrange,),
                      SizedBox(width: 10,),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        height: 200,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Container(
                              height: 120,
                              width: 140,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/bajir kanal.jpg"),fit: BoxFit.fill
                                ),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 30.0,
                                        offset: Offset(15,15)
                                    )
                                  ]
                              ),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                SizedBox(width: 10,),
                                Text("Banjir Kanal",style: GoogleFonts.poppins(),),
                                Expanded(child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(MdiIcons.heartOutline,color: Colors.deepOrange,),
                                )),
                                SizedBox(width: 10,)
                                ],
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("camp",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 13),),
                                ))

                          ],
                        ),
                      ),
                      SizedBox(width: 30,),
                      Container(
                        height: 200,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Container(
                              height: 120,
                              width: 140,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/jatibarang.jpg"),fit: BoxFit.fill
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 30.0,
                                        offset: Offset(15,15)
                                    )
                                  ]
                              ),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                SizedBox(width: 10,),
                                Text("Jatibarang",style: GoogleFonts.poppins(),),
                                Expanded(child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(MdiIcons.heartOutline,color: Colors.deepOrange,),
                                )),
                                SizedBox(width: 10,)
                              ],
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("lake",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 13),),
                                ))

                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: 90,
                      decoration: BoxDecoration(
                        color: Color(0xFF121212),
                        borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(width: 40,),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                color: Color(0xFF563a30)
                              ),
                              child: Center(
                                child: Icon(Icons.home,color: Colors.white,size: 26,shadows: [
                                  BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 30.0,
                                    offset: Offset(0,0)
                                  )
                                ],),
                              ),
                            ),
                            SizedBox(width: 50,),
                            Icon(MdiIcons.compassOutline,color: Color(0xFF818181),size: 26,),
                            SizedBox(width: 50,),
                            Icon(MdiIcons.heartOutline,color: Color(0xFF818181),size: 26,),
                            SizedBox(width: 50,),
                            Icon(MdiIcons.accountOutline,color: Color(0xFF818181),size: 30,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,)

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
