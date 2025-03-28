import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Special_day extends StatefulWidget {
  const Special_day({super.key});

  @override
  State<Special_day> createState() => _Special_dayState();
}

class _Special_dayState extends State<Special_day> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Color(0xff742B88),)),
        title: Text("Special Day Poster",style: GoogleFonts.lato(fontSize: 20,color: Color(0xff742B88)),),
        backgroundColor: Color(0xffFBF8F8),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xffFFFFFF),
                Color(0xffF2A4A4),]
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(children: [
                Container(height: 30,width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffBEBCBC)),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(children: [
                    Icon(Icons.star_border,color: Color(0xff742B88),),
                    Text("Favorites Poster",style: GoogleFonts.poppins(fontSize: 12),)
                  ],),
                ),
                SizedBox(width: 20),
                Container(height: 30,width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffBEBCBC)),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(children: [
                    Icon(Icons.delete_forever,color: Color(0xff742B88),),
                    Text("Archived Poster",style: GoogleFonts.poppins(fontSize: 12),)
                  ],),
                ),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(children:[
                Text("Select Date",style: GoogleFonts.poppins(fontSize:12,fontWeight: FontWeight.bold),),
                SizedBox(width: 10),
                SizedBox(height: 30,width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Date",
                        suffixIcon: Icon(Icons.calendar_month_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4)
                        )
                    ),
                  ),
                ),
                SizedBox(width:10),
                Container(height: 30,width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffBEBCBC)),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(children: [
                    Center(child: Text("Search",style: GoogleFonts.poppins(fontSize: 12,color: Color(0xff742B88)),))
                  ],),
                ),
              ],),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 260),
              child: Text("Today Poster",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 16),),
            ),
            SizedBox(height:10),
            Container(
                height: 200,width: 410,
                child: Card(
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Container(height: 100,width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/poster1.png"),fit: BoxFit.fill)
                          ),
                        ),
                        TextButton(onPressed: (){}, child: Text("View Full Size",style: GoogleFonts.poppins(fontSize: 15,color: Color(0xff6565EC),decoration: TextDecoration.underline,decorationColor: Color(0xff6565EC)),))
                      ],),
                    ),
                    Column(children: [
                      Row(children: [
                        Container(height: 30,width: 150,
                          child: Text("Human Rights Day 10-12-2024",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(width: 20),
                        IconButton(onPressed: (){}, icon: Icon(Icons.star_border,color: Color(0xff742B88),),)
                      ],),
                      SizedBox(height: 10),
                      Container(height: 70,width: 245,
                        child: Text("Adopted by the UN: Human Rights Day marks the adoption of the Universal Declaration of Human Rights (UDHR) by the United Nations General Assembly on December 10, 1948.",
                          style: GoogleFonts.poppins(fontSize:10,color: Color(0xff615C5C)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Row(children: [
                          GestureDetector(
                            onTap:(){
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: Colors.white,
                                    title: Column(
                                      children: [
                                        Image.asset("assets/img.png",width:400,height: 380,),
                                        Text("Human Rights Day",style: TextStyle(fontSize: 30),)
                                      ],
                                    ),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("With Logo"),
                                            Radio(value: true, groupValue: true, onChanged: (value) {}),
                                            Text("Without Logo"),
                                            Radio(value: false, groupValue: true, onChanged: (value) {}),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(height:40,width: 80,
                                              child: TextFormField(
                                                decoration: InputDecoration(labelText: "Enter Your Name",
                                                    border: OutlineInputBorder()
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            SizedBox(height: 40,width: 180,
                                              child: TextFormField(
                                                decoration: InputDecoration(labelText: "Enter Your Name",
                                                    border: OutlineInputBorder()
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    actions: [Column(children: [
                                      SizedBox(height:40,width: 160,
                                        child: ElevatedButton(
                                            style:ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(4)
                                                ),
                                                backgroundColor: Color(0xff0073F7)
                                            ),
                                            onPressed: (){}, child: Text("Save Detail",style: GoogleFonts.poppins(fontSize: 12,color: Colors.white),)),
                                      ),
                                      SizedBox(height: 10),
                                      Row(children: [
                                        SizedBox(height:40,width: 130,
                                          child: ElevatedButton(
                                              style:ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(4)
                                                  ),
                                                  backgroundColor: Color(0xff0073F7)
                                              ),
                                              onPressed: (){}, child: Text("Download Your Image",style: GoogleFonts.poppins(fontSize: 12,color: Colors.white),)),
                                        ),
                                        SizedBox(width: 20),
                                        SizedBox(height:40,width: 130,
                                          child: ElevatedButton(
                                              style:ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(4)
                                                  ),
                                                  backgroundColor: Color(0xff0073F7)
                                              ),
                                              onPressed: (){}, child: Text("Share Your Image",style: GoogleFonts.poppins(fontSize: 12,color: Colors.white),)),
                                        ),
                                      ],)
                                    ],)

                                    ],
                                  );
                                },
                              );
                            },
                            child: Container(height: 40,width: 100,
                              decoration: BoxDecoration(
                                  color: Color(0xff742B88),
                                  border: Border.all(color: Color(0xffBEBCBC)),
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(children: [
                                  Icon(Icons.file_download_outlined,color: Color(0xffE8EAED),),
                                  Text("Download",style: GoogleFonts.poppins(fontSize: 10,color: Colors.white),)
                                ],),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(height: 40,width: 100,
                            decoration: BoxDecoration(
                                color: Color(0xff742B88),
                                borderRadius: BorderRadius.circular(4)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                Icon(Icons.arrow_outward,color: Color(0xffE8EAED),),
                                Text("Share post",style: GoogleFonts.poppins(fontSize: 10,color: Colors.white),)
                              ],),
                            ),
                          ),
                        ],),
                      ),
                    ],)
                  ],),
                )),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text("Yesterday Poster",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 16),),
            ),
            SizedBox(height:10),
            Container(
                height: 200,width: 410,
                child: Card(
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Container(height: 100,width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/poster2.png"),fit: BoxFit.fill)
                          ),
                        ),
                        TextButton(onPressed: (){}, child: Text("View Full Size",style: GoogleFonts.poppins(fontSize: 15,color: Color(0xff6565EC),decoration: TextDecoration.underline,decorationColor: Color(0xff6565EC)),))
                      ],),
                    ),
                    Column(children: [
                      Row(children: [
                        Container(height: 30,width: 150,
                          child: Text("International Corruption Day 09-12-2024",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(width: 20),
                        IconButton(onPressed: (){}, icon: Icon(Icons.star_border,color: Color(0xff742B88),),)
                      ],),
                      SizedBox(height: 10),
                      Container(height: 70,width: 245,
                        child: Text("Corruption undermines democracy, economic development, and trust in institutions. Together, we can build a future of integrity and transparency.",
                          style: GoogleFonts.poppins(fontSize:10,color: Color(0xff615C5C)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Row(children: [
                          GestureDetector(
                            onTap:(){
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: Colors.white,
                                    title: Column(
                                      children: [
                                        Image.asset("assets/poster1.png",width:400,height: 380,),
                                        Text("International Corruption Day",style: TextStyle(fontSize: 30),)
                                      ],
                                    ),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("With Logo"),
                                            Radio(value: true, groupValue: true, onChanged: (value) {}),
                                            Text("Without Logo"),
                                            Radio(value: false, groupValue: true, onChanged: (value) {}),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(height:40,width: 80,
                                              child: TextFormField(
                                                decoration: InputDecoration(labelText: "Enter Your Name",
                                                    border: OutlineInputBorder()
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            SizedBox(height: 40,width: 180,
                                              child: TextFormField(
                                                decoration: InputDecoration(labelText: "Enter Your Name",
                                                    border: OutlineInputBorder()
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    actions: [Column(children: [
                                      SizedBox(height:40,width: 160,
                                        child: ElevatedButton(
                                            style:ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(4)
                                                ),
                                                backgroundColor: Color(0xff0073F7)
                                            ),
                                            onPressed: (){}, child: Text("Save Detail",style: GoogleFonts.poppins(fontSize: 12,color: Colors.white),)),
                                      ),
                                      SizedBox(height: 10),
                                      Row(children: [
                                        SizedBox(height:40,width: 130,
                                          child: ElevatedButton(
                                              style:ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(4)
                                                  ),
                                                  backgroundColor: Color(0xff0073F7)
                                              ),
                                              onPressed: (){}, child: Text("Download Your Image",style: GoogleFonts.poppins(fontSize: 12,color: Colors.white),)),
                                        ),
                                        SizedBox(width: 20),
                                        SizedBox(height:40,width: 130,
                                          child: ElevatedButton(
                                              style:ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(4)
                                                  ),
                                                  backgroundColor: Color(0xff0073F7)
                                              ),
                                              onPressed: (){}, child: Text("Share Your Image",style: GoogleFonts.poppins(fontSize: 12,color: Colors.white),)),
                                        ),
                                      ],)
                                    ],)

                                    ],
                                  );
                                },
                              );
                            },
                            child: Container(height: 40,width: 100,
                              decoration: BoxDecoration(
                                  color: Color(0xff742B88),
                                  border: Border.all(color: Color(0xffBEBCBC)),
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(children: [
                                  Icon(Icons.file_download_outlined,color: Color(0xffE8EAED),),
                                  Text("Download",style: GoogleFonts.poppins(fontSize: 10,color: Colors.white),)
                                ],),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(height: 40,width: 100,
                            decoration: BoxDecoration(
                                color: Color(0xff742B88),
                                borderRadius: BorderRadius.circular(4)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                Icon(Icons.arrow_outward,color: Color(0xffE8EAED),),
                                Text("Share post",style: GoogleFonts.poppins(fontSize: 10,color: Colors.white),)
                              ],),
                            ),
                          ),
                        ],),
                      ),
                    ],)
                  ],),
                )),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text("Older Poster",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(children: [
                Container(height: 100,width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/poster1.png"),fit: BoxFit.fill)
                  ),),
                SizedBox(width: 20),
                Container(height: 100,width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/poster2.png"),fit: BoxFit.fill)
                  ),),
                SizedBox(width: 20),
                Container(height: 100,width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/poster1.png"),fit: BoxFit.fill)
                  ),),
              ],),
            )
          ],),
        ),
      ),
    );
  }
}

class Download extends StatelessWidget {
  const Download({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: 400,width: 360,
        child: AlertDialog(
        ),
      ),
    );
  }
}