import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.blueAccent,

  ];


  List<String> text =[
    'Enquiries Received',
    'Lead Generated',
    'Number of Views ',
    'Mini Website Visits'
  ];
  List<String> images = [
    'assets/dash1.png',
    'assets/dash2.png',
    'assets/dash3.png',
    'assets/dash4.png',

  ];
  List view =[
    '100',
    '055',
    '100',
    '100'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.purple, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Dashboard",
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.purple),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text(
                    "S",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Smart Global",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 160),
          child: Text("My Business Insights",
              style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: colors[index],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(image: AssetImage(images[index])),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              text[index],
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                          Text(view[index],style: TextStyle(color: Colors.white,fontSize: 30),)
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Text("Customer Rating & Reviews",style: TextStyle(fontSize: 20),),
          ),

            Padding(
            padding: const EdgeInsets.all(15.0),
            child:
            Container(
              height: 100,
              width: double.infinity,
              child: Row(children: [
                Container(
                  width:100,
                  child: Image(image: AssetImage('assets/cus.png')),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)
                      ),
                      color: Colors.red
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Customer Ratings & Reviews',style: TextStyle(fontSize: 16),),
                      Text('Average rating (e.g., ★★★★☆) and the ',style: TextStyle(fontSize: 10),),
                      Text('number of reviews.',style: TextStyle(fontSize: 10),),
                    ],),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
              ],),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all()
              ),
            ),
          ),




          SizedBox(height: 150,)

      ],),
    );
  }
}

