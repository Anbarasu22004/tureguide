import 'package:flutter/material.dart';
import 'package:flutterproject/home/Buttomnav.dart';
import 'package:google_fonts/google_fonts.dart';








class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '5 Second Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5)); // Splash screen duration
    if (mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login_Screen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container
          (height: 50,
            width: 200,
            child: Image.asset('assets/logo.png',fit: BoxFit.fill,)),
      ),
    );
  }
}

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(height:250,width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/loginimg.png"),fit: BoxFit.fill)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right:175),
            child: Text("Login",style: GoogleFonts.lato(textStyle: TextStyle(fontSize:24,fontWeight: FontWeight.bold))),
          ),
          SizedBox(height:10),
          SizedBox(height: 40,width: 280,
            child: TextFormField(controller: emailController,
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(fontSize: 15),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
              ),),
          ),
          SizedBox(height:10),
          SizedBox(height: 40,width: 280,
            child: TextFormField(controller: passwordController,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(fontSize: 15),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
              ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:60),
            child: Row(children: [
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value){}),
                  Text("Remember me",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 15)),),
                ],
              ),
              SizedBox(width: 30),
              Text("Forgot Password?",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 15)),)
            ],),
          ),
          SizedBox(height: 10),
          SizedBox(height: 44,width: 280,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF742B88),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  bot()),
                    );
                  }, child: Text("LOGIN",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),))),
          SizedBox(height:20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width:  100,
                height: 0.5,
                color:  Color(0xffAAA5A5),
              ),
              SizedBox(width: 5),
              Text(
                'or continue with',
                style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 14,color: Colors.black)),
              ),
              SizedBox(width: 5),
              Container(
                width: 100,
                height: 0.5,
                color:  Color(0xffAAA5A5),
              ),
            ],
          ),
          SizedBox(height:10),
          Padding(
            padding: const EdgeInsets.only(left:115),
            child: Row(children: [
              Text("Login With",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 15,color: Colors.black))),
              TextButton(onPressed: (){}, child: Text("Mobile Number",style:GoogleFonts.lato(textStyle: TextStyle(fontSize: 15,color: Colors.blue,decoration: TextDecoration.underline)),))
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left:115),
            child: Row(children: [
              Text("New Register? Please",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,color: Colors.black))),
              TextButton(onPressed: (){}, child: Text("Sign Up",style:GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,color: Colors.blue,decoration: TextDecoration.underline)),))
            ],),
          ),
          TextButton(onPressed: (){}, child: Text("T&C's Privacy policy",style:GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,color: Color(0xff0B2646),decoration: TextDecoration.underline))))
        ],
      ),
    );
  }
}