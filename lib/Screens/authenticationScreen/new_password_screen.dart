import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/Screens/authenticationScreen/verfication_code_screen.dart';


import '../../Models/colors.dart';
import 'forgetPassword_screen.dart';
import 'login_screen.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 0.19.sw,),
                Stack(
                  children: [
                    Image.asset("assets/images/Rectangle 240.png",width: 200,),
                    Padding(
                      padding: EdgeInsets.only(top:0.045.sh,right: 0.08.sw,),
                      child: Image.asset("assets/images/Group 468.png",),
                    ),
                  ],
                ),
                SizedBox(width: 0.1.sw,),
                Padding(
                  padding: EdgeInsets.only(top: 0.07.sh,),
                  child: GestureDetector(
                    child: Image.asset("assets/images/Group 260.png",),
                    onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> VerficationCodeScreen(),),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 0.04.sh,),
            Center(
              child: Text(
                "قم بإدخال كلمة المرور الجديده",
                style: TextStyle(
                  fontSize: 25.sp,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 0.04.sh,),
            Center(
              child: Container(
                width: 0.85.sw,
                height: 0.55.sh,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 0.04.sh,),
                    Padding(
                      padding: EdgeInsets.only(right: 0.05.sw),
                      child: Text(
                        "كلمة المرور",
                        style: TextStyle(
                            color: CustomColor.forgetPasswordText,
                            fontSize: 16.sp
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 0.05.sw),
                      child: Container(
                        padding: EdgeInsets.only(left: 0.021.sh),
                        width: 0.83.sw,
                        alignment: Alignment.center,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration:  InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: "كلمة المرور",
                            hintStyle: TextStyle(fontSize: 12.sp,color: CustomColor.formText),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.01.sh,),
                    Padding(
                      padding: EdgeInsets.only(right: 0.05.sw),
                      child: Text(
                        "تأكيد كلمة المرور",
                        style: TextStyle(
                            color: CustomColor.forgetPasswordText,
                            fontSize: 16.sp
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 0.05.sw),
                      child: Container(
                        padding: EdgeInsets.only(left: 0.021.sh),
                        width: 0.83.sw,
                        alignment: Alignment.center,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration:  InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: "تأكيد كلمة المرور",
                            hintStyle: TextStyle(fontSize: 12.sp,color: CustomColor.formText),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.055.sh,),
                    Padding(
                      padding:  EdgeInsets.only(right: 0.18.sw),
                      child: Text(
                        'إعادة تعيين كلمة المرور',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.03.sh,),
                    GestureDetector(
                      child: Container(
                        width: 90,
                        height: 50,
                        margin: EdgeInsets.only(right: 0.3.sw),
                        decoration: BoxDecoration(
                          color: CustomColor.buttonColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 40.sp,
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
            ),
            Container(
              color: CustomColor.background,
              height: 0.18.sh,
            ),
          ],
        ),
      ),
    );
  }
}
