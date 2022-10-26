import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class categories_card extends StatefulWidget {
  const categories_card({Key? key, this.icon}) : super(key: key);
final icon ;
  @override
  State<categories_card> createState() => _categories_cardState();
}

class _categories_cardState extends State<categories_card> {
  @override

  bool isenable = false;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: InkWell(
        onTap: (){
          setState((){
            isenable = !isenable;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          width: 160,
          decoration: BoxDecoration(
            color: isenable ?Colors.white :Colors.grey.shade50,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: isenable ?Colors.grey.shade300 :Colors.transparent,
                blurRadius: 30.0,
                offset: Offset(15,5)
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
            child: Row(
              children: [
                Container(
                  width: 40,
                  decoration: BoxDecoration(
                    color: isenable  ?Colors.blueGrey.shade300 :Colors.blueGrey.shade100,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Center(
                    child: Icon(widget.icon,color: Colors.white,),
                  ),
                ),
                SizedBox(width: 10,),
                Text("Home Stay",style: GoogleFonts.poppins(color: isenable ?Colors.black87 :Colors.grey),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
