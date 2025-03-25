
import 'package:flutter/material.dart';
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
             Text("*  Real Estate Development",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold),),
             Text("*  Constuction",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold),),
             Text("*  plotted Development",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold),),
             Text("*  Interior Design",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold),),

           ],),
         ),
       ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Our Products",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold),),

            TextButton(onPressed: (){}, child: Text("View All",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.purple)))
          ],)

      ],),
    );
  }
}
