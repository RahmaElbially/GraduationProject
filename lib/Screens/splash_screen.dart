import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/Models/colors.dart';
import 'package:graduation_project/Screens/editor_screen.dart';
import 'package:graduation_project/Screens/authenticationScreen/login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      ),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.background,
      body: Column(
        children: [
          SizedBox(height: 0.22.sh,),
          Center(
              child: Image.asset("assets/images/logo final-01.png",height: 150,width: 150),
            ),
          SizedBox(height: 0.01.sh,),
          Center(
            child: Text("ArTec",style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: 'Generator'),),
          ),
          ],
      ),
    );
  }
}
