import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class DigitalCardPage extends StatefulWidget {
  const DigitalCardPage({super.key});

  @override
  State<DigitalCardPage> createState() => _DigitalCardPageState();
}

class _DigitalCardPageState extends State<DigitalCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.purple, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
        title:
        Text(
          "My Digital Card",
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.purple),
        ),
      ),
      body:
      Container(
        decoration: BoxDecoration(

        ),
        child: Column(

          children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [

              Container(
                height: 800,
                decoration: BoxDecoration(

                ),

              ),


              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  height: 400,
                  width: 320,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.red.shade300,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),


                  ),
                  child:
                  Container(
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 170,top: 5),
                          child: Image(image: AssetImage('assets/logo.png'),),
                        ),
                        Text(
                          "SRI LAKSHMI GRP",
                          style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.purple),
                        ),
                          Text(
                            "K.MARIMUTHU",
                            style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.bold, ),
                          ),
                          Text(
                            "(Managing Director)",
                            style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.bold, ),
                          ),
                          Text(
                            "Address:",
                            style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.purple),
                          ),
                          Text(
                            "167/5, periyagoundar nagar, vinayagapuram, saravanampatti coimbatore - 641 035",
                            style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.bold, ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.call),
                                iconSize: 21,
                                color: Colors.purple,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.message),
                                iconSize: 21,
                                color: Colors.purple,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.mail),
                                iconSize: 21,
                                color: Colors.purple,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.roundabout_right_outlined),
                                iconSize: 21,
                                color: Colors.purple,
                              ),
                            )

                          ],),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                maximumSize: Size(500, 100),
                                backgroundColor: Colors.purple,
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text("Add to Contact"),
                            ),
                          )
                      ],),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),
                  )
                ),
              ),


              Positioned(
                top: 50,
                left: 80,
                child: Container(
                  width: 95,
                  height: 95,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(

                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.red.shade300,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                  child: Container(
                    height: 95,
                    width: 95,
                    child:
                    Image(image: AssetImage('assets/person.png'),fit: BoxFit.fill,),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.orange.shade200,
                            Colors.white,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 520,
                right: 170,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(Icons.call,color: Colors.purple,),
                      ),
                      Text("23423 23823")

                    ],),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(Icons.phone_android,color: Colors.purple,),
                      ),
                      Text("23423 23823")

                    ],),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(Icons.mail,color: Colors.purple,),
                      ),
                      Text("www.anbarasu@gmail.com")

                    ],),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(Icons.mail_lock_outlined,color: Colors.purple,),
                      ),
                      Text("www.anbarasu@gmail.com")

                    ],),
                ],),
              ),
              Positioned(
                top: 630,
                child: Expanded(
                    child: Container(
                      height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: Image(image: AssetImage('assets/qrcode.png'),fit: BoxFit.fill,))),
              )
            ],
          ),


        ],),
      ),
    );
  }
}
