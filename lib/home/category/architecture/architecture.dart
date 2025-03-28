import 'package:flutter/material.dart';
import 'package:flutterproject/home/category.dart';
import 'package:flutterproject/home/Buttomnav.dart';
import 'package:flutterproject/home/category/architecture/architectureprofile/architectureprofile.dart';
import 'package:flutterproject/home/home1.dart';
import 'package:google_fonts/google_fonts.dart';



class architecture extends StatefulWidget {
  const architecture({super.key});

  @override
  State<architecture> createState() => _architectureState();
}

class _architectureState extends State<architecture> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text("Architecture",style: GoogleFonts.lato(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.purple),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.search,color: Colors.purple,size: 30,),
          )
        ],
      ),
      body:

      Container(


        child: Column(children: [
          Container(
            height: 50,
            color: Colors.grey,
            child: filter(),
          ),
          Expanded(child: items()),

          SizedBox(height: 30,)
        ],),
      ),

    );
  }
}



class filter extends StatelessWidget {
  const filter({super.key});

  @override
  Widget build(BuildContext context) {

    void _showAlertDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Row(
              children: [
                Text("Sort by"),
                SizedBox(width: 110,),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.close))
              ],
            ),
            content:Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(onPressed: (){}, child: Text('Location')),
                TextButton(onPressed: (){}, child: Text("Rating")),
                TextButton(onPressed: (){}, child: Text("Business type"))

              ],
            ) ,


          );
        },
      );
    }


    final List<String> filter = [
      'Sort by',
      'Location',
      'Rating',
      'Business Type'
    ];

    return Scaffold(

      body:
      Container(
        height: 60,
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:filter.length ,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(onPressed: (){
                    switch (filter[index]) {
                      case 'Sort by':
                        _showAlertDialog(context);
                        break;
                      case 'Location':
                        _showAlertDialog(context);

                        break;
                      case 'Rating':
                        _showAlertDialog(context);
                        break;
                      case 'Business Type':
                        _showAlertDialog(context);
                        break;

                      default:
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Coming Soon...')));
                    }
                  }, child:Text(filter[index],style: TextStyle(color: Colors.black),) ,style:ElevatedButton.styleFrom(backgroundColor: Colors.white,),),
                );
              }),
        ),
      ),
    );
  }
}

class items extends StatefulWidget {
  const items({super.key});

  @override
  State<items> createState() => _itemsState();
}

class _itemsState extends State<items> {


  List architectureprofile = [

    'assets/category7.png',
    'assets/category8.png',
    'assets/category5.png',
    'assets/category6.png',
    'assets/architecture1.png',
    'asstes/architecture2.png',
  ];

  List names =[
    'Ashok',
    'Ramesh',
    'Divahar',
    'Sakthivel',
    'Anbarasu',
    'Sathish'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView.builder(
          itemCount: 6,
          itemBuilder: (context,index){

        return
          GestureDetector(
            onTap: (){
              switch (architectureprofile[index]) {
                case 'assets/category7.png':
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => profile1()));
                  break;
                case 'assets/category8.png':
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => architecture()));
                  break;

                default:
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Coming Soon...')));
              }

            },

            child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 200,
              width: 370,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(image: AssetImage(architectureprofile[index]))
                          ),
                        ),
                        SizedBox(height: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(names[index],style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.purple),),
                            Row(
                              children: [
                                Icon(Icons.handshake,size: 10,),SizedBox(width: 5,),
                                Text('Architechture',style: GoogleFonts.lato(fontSize: 8,fontWeight: FontWeight.bold,),),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on_rounded,size: 10,),SizedBox(width: 1,),
                                Text('Coimbatore, Tamil Nadu',style: GoogleFonts.lato(fontSize: 8,fontWeight: FontWeight.bold,),),
                              ],
                            ),
                          ],)

                      ],
                    ),
                  ),

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

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: (){}, child:  Text('Call Now',style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.purple)),style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(color: Colors.purple),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                ),
                              minimumSize: Size(100, 30),
                            ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: (){}, child:  Text('Whatsapp',style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white)),style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)
                                ),
                              minimumSize: Size(100, 30),

                            ),
                            ),
                          ),
                        ],
                      )
                    ],
                    ),
                  )
                ],),
              decoration: BoxDecoration(
                  color: Colors.white,

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 5,   // Blur radius
                      offset: Offset(0, 3), // Offset in x and y
                    ),
                  ],

                  borderRadius: BorderRadius.circular(10)
              ),
            ),
                    ),
          );
      })
    );
  }
}


