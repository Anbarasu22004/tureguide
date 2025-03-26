
import 'package:flutter/material.dart';
import 'package:flutterproject/home/category/architecture/architectureprofile/Ourproducts.dart';
import 'package:flutterproject/home/category/architecture/architectureprofile/Photospage.dart';
import 'package:google_fonts/google_fonts.dart';

class Ourservice extends StatefulWidget {
  const Ourservice({super.key});

  @override
  State<Ourservice> createState() => _OurserviceState();
}

class _OurserviceState extends State<Ourservice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
       Container(
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             Text("*  Real Estate Development",style: GoogleFonts.lato(fontSize: 15,),),
             Text("*  Constuction",style: GoogleFonts.lato(fontSize: 15,),),
             Text("*  plotted Development",style: GoogleFonts.lato(fontSize: 15,),),
             Text("*  Interior Design",style: GoogleFonts.lato(fontSize: 15,),),
               Row(
                 children: [
                   Text("Our Products",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold),),

                   Padding(
                     padding: const EdgeInsets.only(left: 190),
                     child: TextButton(onPressed: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context)=>Ourproducts()));
                     }, child: Text("View All",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.purple))),
                   )
                 ],),
           ],),
         ),
       ),
        SizedBox(height: 10,),
        Expanded(child: Ourproducts()),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Photos",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold),),

              TextButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>photos()));
              }, child: Text("View All photos",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.purple)))
            ],),
        ),
        Expanded(child: photos()),


      ],),
    );
  }
}







