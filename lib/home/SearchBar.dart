import 'package:flutter/material.dart';
import 'package:flutterproject/home/Userprofilepage/LocationPage.dart';
import 'package:flutterproject/home/Userprofilepage/businessprofile.dart';
import 'package:flutterproject/home/Userprofilepage/category/Dashboard.dart';
import 'package:flutterproject/home/Userprofilepage/category/Help&support.dart';
import 'package:flutterproject/home/Userprofilepage/category/Messages.dart';
import 'package:flutterproject/home/Userprofilepage/category/MydigitalCard.dart';
import 'package:flutterproject/home/Userprofilepage/category/Posterpage.dart';
import 'package:flutterproject/home/Userprofilepage/category/Selectlanguage.dart';
import 'package:flutterproject/home/Userprofilepage/wishlist.dart';
import 'package:flutterproject/home/category/architecture/architecture.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> categories = [
    'Architecture',
    'Land Promoters',
    'Engineers',
    'Real Estate Consultant',
    'Builder',
    'Contractors',
    'Registration Services',
    'Bank Loans (NBFC/PVT)',
    'Account Setting',
    'My Digital Card',
    'Special Day Poster',
    "Wishlist",
    'My Message',
    'Dashboard',
    'Language',
    'Subscription Management',
    'Feedback & Support',

  ];

  List<String> filteredItems = [];
  bool isTyping = false;

  void filterSearch(String query) {
    if (query.isEmpty) {
      setState(() {
        isTyping = false;
        filteredItems = [];
      });
      return;
    }

    List<String> tempList = categories
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();

    setState(() {
      isTyping = true;
      filteredItems = tempList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LocationPage()));
          }, icon: Icon(Icons.location_on))
        ],
        
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.purple,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 50,
                  width: 240,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.purple.shade800
                    ),
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: TextFormField(
                    onChanged: (value) => filterSearch(value),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search here',

                        prefixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 50,
                    width: 100,
                    child: Center(child: Text('Search',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)),
                    decoration: BoxDecoration(
                        color: Colors.purple.shade800,
                        borderRadius: BorderRadius.circular(
                            20
                        )
                    ),

                  ),
                )
              ],
            ),
            
            SizedBox(height: 10),
            isTyping
                ? Expanded(
              child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredItems[index]),
                    onTap: (){
                      switch (categories[index]) {
                        case 'Architecture':
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => architecture()));
                          break;
                        case 'Language':
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LanguageSection()));
                          break;
                        case 'Wishlist':
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => wishlist()));
                          break;
                        case 'Account Setting':
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Accountpage()));
                          break;
                        case 'My Message':
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MessagesPage()));
                          break;
                        case 'Dashboard':
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => dashboard()));
                          break;
                        case 'Feedback & Support':
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HelpPage()));
                          break;
                        case 'My Digital Card':
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DigitalCardPage()));
                          break;
                        case 'Special Day Poster':
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Special_day()));
                          break;
                        default:
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Coming Soon...')));



                      }
                    },
                  )
                  ;

                },
              ),
            )
                : Container(), 
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text("Recent Search",style: TextStyle(fontSize: 20),),
            ),


            Container(
              height: 70,
              child: Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
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
                          style: ElevatedButton.styleFrom(
                            maximumSize: Size(200, 50),
                            backgroundColor: Colors.deepOrange.shade100,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(categories[index]),
                        ),
                      );
                      ;

                  },
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
