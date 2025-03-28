import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageSection extends StatefulWidget {
  const LanguageSection({super.key});

  @override
  State<LanguageSection> createState() => _LanguageSectionState();
}

class _LanguageSectionState extends State<LanguageSection> {
  String selectedLanguage = 'English';
  final List<String> languages = [
    'English',
    'தமிழ்',
    'हिन्दी',

  ];
  List subtitle =[
    'English',
    'Tamil',
    'Hindi'
  ];

  List text=[
    'A',
    'த',
    'िन'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.purple, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Select Language",
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.purple),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.red.shade300,
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset('assets/language.png', height: 150),
            SizedBox(height: 15),
            Text(
              "Select Language",
              style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "True Guide supports multiple languages to enhance your experience. "
                    "Please select your preferred language to continue.",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 20),


            Expanded(
              child: ListView.builder(
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border(

                        bottom: BorderSide(color: Colors.black, width: 0.50),
                      ),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(

                        child: Text(text[index]),
                      ),
                      title: Text(
                        languages[index],
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(subtitle[index]),
                      trailing: selectedLanguage == languages[index]
                          ? Icon(Icons.check_circle, color: Colors.purple)
                          : Icon(Icons.circle_outlined, color: Colors.grey),
                      onTap: () {
                        setState(() {
                          selectedLanguage = languages[index];
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  minimumSize: Size(400, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Select",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
