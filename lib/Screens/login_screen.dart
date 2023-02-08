import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graduation_project/Screens/forgetPassword_screen.dart';
import 'package:graduation_project/Screens/signUp_screen.dart';

import '../Models/colors.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _groupValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                height: 0.45.sh,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(60, 70),
                    bottomRight: Radius.elliptical(60, 70),
                  ),
                  color: CustomColor.background,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 0.045.sh,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/logo final-01.png",
                      height: 120,
                      width: 120,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 0.27.sh,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 35, bottom: 25),
                        child: Container(
                          height: 0.7.sh,
                          width: 0.8.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            color: CustomColor.backgroundLogin,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 0.05.sh,
                                  ),
                                  Center(
                                    child: Text(
                                      "تسجيل الدخول",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Generator",
                                          decoration: TextDecoration.none),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.09.sh,
                                  ),
                                  SizedBox(
                                    width: 0.7.sw,
                                    height: 0.06.sh,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 0.01.sh, right: 0.05.sw),
                                        hintText: 'الرقم القومي',
                                        hintStyle: TextStyle(
                                            fontSize: 20.sp,
                                            fontFamily: 'Generator',
                                            color: CustomColor.formText
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.circular(
                                                32)
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.circular(
                                                32)
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "أدخل رقم قومي صحيح";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.05.sh,
                                  ),
                                  SizedBox(
                                    width: 0.7.sw,
                                    height: 0.06.sh,
                                    child: TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(top: 0.01.sh,right: 0.05.sw),
                                        hintText: 'كلمة المرور',
                                        hintStyle: TextStyle(
                                            fontSize: 20.sp,
                                            fontFamily: 'Generator',
                                            color: CustomColor.formText
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.circular(32)
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.circular(32)
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "أدخل كلمة مرور صحيحه";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.02.sh,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(width: 0.1.sw,),
                                    Radio(
                                      value: "one",
                                      groupValue: _groupValue,
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) => Colors.white),
                                      activeColor:
                                          MaterialStateColor.resolveWith(
                                              (states) => Colors.green),
                                      onChanged: (value) {
                                        setState(() {
                                          _groupValue = value.toString();
                                        });
                                      },
                                      toggleable: true,
                                    ),
                                    Text(
                                        "تذكرني",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.sp
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.15.sw,
                                    ),
                                    GestureDetector(
                                      child: Text(
                                        "نسيت كلمة المرور؟",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.sp,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ForgetPasswordScreen(),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                  ),
                                  SizedBox(
                                    height: 0.05.sh,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                                        padding: EdgeInsets.symmetric(horizontal: 0.19.sw,vertical: 0.008.sh),
                                    ),
                                    child:  Text(
                                        'تسجيل الدخول',
                                      style: TextStyle(
                                        color: CustomColor.buttonText,
                                        fontSize: 23.sp,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.02.sh,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 0.16.sw,),
                                      GestureDetector(
                                      child: Text(
                                        "إنشاء حساب",
                                        style: TextStyle(
                                          color: Colors.white,
                                          decoration: TextDecoration.underline,
                                          fontSize: 20.sp,
                                        ),
                                      ),
                                      onTap: () => Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignUpScreen(),
                                        ),
                                      ),
                                    ),
                                  ],
                                  ),
                                ],
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


