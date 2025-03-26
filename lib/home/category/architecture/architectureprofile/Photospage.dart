

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class photos extends StatefulWidget {
  const photos({super.key});

  @override
  State<photos> createState() => _photosState();
}

class _photosState extends State<photos> {

  List imagess=[
    'assets/category1.png',
    'assets/category2.png',
    'assets/category3.png',
    'assets/category4.png',
    'assets/category5.png',
    'assets/category6.png',
    'assets/category7.png',
    'assets/category8.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SizedBox(
        height: 100,
        child: ListView.builder(
            itemCount: imagess.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(image: AssetImage(imagess[index]),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                )
              ;

            }),
      ),
    );;
  }
}