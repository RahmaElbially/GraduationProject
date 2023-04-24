import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../Models/colors.dart';
import 'forgetPassword_screen.dart';
import 'login_screen.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
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
                      height: 0.25.sh,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 0.1.sw, bottom: 0.04.sh),
                      child: Container(
                        height: 0.94.sh,
                        width: 0.8.sw,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                          color: CustomColor.backgroundLogin,
                        ),
                        child: Column(
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
                                      "إنشاء حساب",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Generator",
                                          decoration: TextDecoration.none),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.04.sh,
                                  ),
                                  SizedBox(
                                    width: 0.7.sw,
                                    height: 0.106.sh,
                                    child: TextFormField(
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 0.01.sh, right: 0.05.sw),
                                        hintText: 'اسم الطالب',
                                        hintStyle: TextStyle(
                                            fontSize: 20.sp,
                                            fontFamily: 'Generator',
                                            color: CustomColor.formText.withOpacity(0.4)
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: const OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(32),
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "يْرجي إدخال إسم صحيح";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.7.sw,
                                    height: 0.106.sh,
                                    child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 0.01.sh, right: 0.05.sw),
                                        hintText: 'إسم المستخدم',
                                        hintStyle: TextStyle(
                                            fontSize: 20.sp,
                                            fontFamily: 'Generator',
                                            color: CustomColor.formText.withOpacity(0.4)
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: const OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(32),
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "يْرجي إدخال إسم مستخدم صحيح";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.7.sw,
                                    height: 0.106.sh,
                                    child: TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: 0.01.sh, right: 0.05.sw),
                                        hintText: 'البريد الإلكتروني',
                                        hintStyle: TextStyle(
                                            fontSize: 20.sp,
                                            fontFamily: 'Generator',
                                            color: CustomColor.formText.withOpacity(0.4)
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: const OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(32),
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty || !value.contains("@")) {
                                          return "يْرجي إدخال بريد إلكتروني صحيح";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.7.sw,
                                    height: 0.106.sh,
                                    child: TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(top: 0.01.sh,right: 0.05.sw),
                                        hintText: 'كلمة المرور',
                                        hintStyle: TextStyle(
                                            fontSize: 20.sp,
                                            fontFamily: 'Generator',
                                            color: CustomColor.formText.withOpacity(0.4)
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: const OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(32),
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "يْرجي إدخال كلمة مرور صحيحه";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.7.sw,
                                    height: 0.106.sh,
                                    child: TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(top: 0.01.sh,right: 0.05.sw),
                                        hintText: 'تأكيد كلمة المرور',
                                        hintStyle: TextStyle(
                                            fontSize: 20.sp,
                                            fontFamily: 'Generator',
                                            color: CustomColor.formText.withOpacity(0.4)
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: const OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(32),
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "يْرجي إدخال كلمة مرور صحيحه";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.02.sh,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        _formKey.currentState!.save();
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      elevation: 20,
                                      shadowColor: Colors.grey,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                                      padding: EdgeInsets.symmetric(horizontal: 0.15.sw,vertical: 0.008.sh),
                                    ),
                                    child:  Text(
                                      'إنشاء حساب',
                                      style: TextStyle(
                                        color: CustomColor.buttonText,
                                        fontSize: 25.sp,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.015.sh,
                                  ),
                                  GestureDetector(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding:  EdgeInsets.only(right: 0.06.sw),
                                        child: Text(
                                          "تسجيل دخول",
                                          style: TextStyle(
                                            color: Colors.white,
                                            decoration: TextDecoration.underline,
                                            fontSize: 20.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                    onTap: () => Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginScreen(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
