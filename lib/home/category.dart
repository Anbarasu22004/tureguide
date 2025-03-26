import 'package:flutter/material.dart';
import 'package:flutterproject/home/category/architecture/architecture.dart';
import 'package:google_fonts/google_fonts.dart';


class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {


  final List<String> categories = [
    'Architecture',
    'Land Promoters',
    'Engineers',
    'Real Estate Consultant',
    'Builder',
    'Contractors',
    'Registration Services',
    'Bank Loans (NBFC/PVT)'
  ];
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
      appBar:
      AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.purple,size: 30,),
        title: Text("Categories",style: GoogleFonts.lato(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.purple),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search,color: Colors.purple,size: 30,),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.red.shade300
                ]
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
          Container(
            child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context,index){
                  return  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          style: ListTileStyle.list,
                          leading: Container(
                              height: 50,
                              width: 50,
                              child: Image(image: AssetImage(imagess[index]),fit: BoxFit.contain,)),
                          title:
                          Text(categories[index],style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.bold),),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: (){
                            switch (categories[index]) {
                              case 'Architecture':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => architecture()));
                                break;
                              case 'Land Promoters':
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
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
