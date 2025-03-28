import 'package:flutter/material.dart';
import 'package:flutterproject/home/category/architecture/architectureprofile/Ourproducts.dart';
import 'package:flutterproject/home/category/architecture/architectureprofile/Photospage.dart';
import 'package:flutterproject/home/category/architecture/architectureprofile/servicepage.dart';
import 'package:google_fonts/google_fonts.dart';


class profile1 extends StatefulWidget {
  const profile1({super.key});

  @override
  State<profile1> createState() => _profile1State();
}

class _profile1State extends State<profile1> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.purple,size: 30,)),
        title: Text("SRI VISHAKHA FIELDS",style: GoogleFonts.lato(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.purple),),

      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Column(children: [
            Image(image: AssetImage('assets/architecture1.png')),
            Text("ASHOK.K.S",style: GoogleFonts.lato( fontSize: 14,fontWeight: FontWeight.bold,color: Colors.purple),),
            Row(children: [
              Icon(Icons.handshake,size: 15,),
              Text("Architecture",style: TextStyle(fontSize: 9),)
            ],)
          ],),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('SRI VISHAKHA FIELDS',style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.purple),),
                    SizedBox(width: 19,),
                    Icon(Icons.arrow_outward,size: 19,)
                  ],
                ),
                Text('Verified Listing',style: GoogleFonts.lato(fontSize: 8,fontWeight: FontWeight.bold,),),
                Text('05 Years in Business',style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.bold,),),

                Text('Property Serviced',style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.purple),),
                Text('Real Estate Development, Construction',style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,),),
                Text('Plotted Development',style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,),),


              ],
            ),
          )
        ],),
        Expanded(child: tapbar()),




        
        
      ],),


    );
  }
}


class tapbar extends StatelessWidget {
  const tapbar({super.key});

  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading:SizedBox() ,




          bottom: TabBar(
            labelColor: Colors.purple,
            tabs: [
              Tab(text: "Our Services", ),
              Tab(text: "Our Products", ),
              Tab(text: "Photos", ),
              Tab(text: "Contact Info",)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Ourservice(),
            Ourproducts(),
            photos(),
            Center(child: Text("", style: TextStyle(fontSize: 20))),

          ],
        ),
      ),
    );
  }
}



