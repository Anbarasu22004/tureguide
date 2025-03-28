
import 'package:flutter/material.dart';
import 'package:flutterproject/home/category/architecture/architectureprofile/products/productpage1.dart';
import 'package:flutterproject/home/category/architecture/architectureprofile/products/productpage2.dart';
import 'package:google_fonts/google_fonts.dart';



class Ourproducts extends StatefulWidget {
  const Ourproducts({super.key});

  @override
  State<Ourproducts> createState() => _OurproductsState();
}

class _OurproductsState extends State<Ourproducts> {

  List imagess=[
    'assets/product3.png',
    'assets/product2.png',
    'assets/product3.png',
    'assets/category4.png',
    'assets/category5.png',
    'assets/category6.png',
    'assets/category7.png',
    'assets/category8.png'
  ];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body:
        SizedBox(
          height: 100,
          child: ListView.builder(
              itemCount: imagess.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return
                  GestureDetector(
                    onTap: (){
                      switch (imagess[index]) {
                        case 'assets/product3.png':
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Product1()));
                          break;
                        case 'assets/product2.png':
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Product2()));
                          break;

                        default:
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Coming Soon...')));
                      }
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage(imagess[index]),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                  )
                ;

              }),
        ),
      );
  }
}