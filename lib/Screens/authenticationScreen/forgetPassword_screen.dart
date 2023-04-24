import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/Models/colors.dart';
import 'package:graduation_project/Screens/authenticationScreen/login_screen.dart';
import 'package:graduation_project/my_flutter_app_icons.dart';

import 'verfication_code_screen.dart';
class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
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
                          child: Image.asset("assets/images/3293465.png",),
                        ),
                      ],
                ),
                SizedBox(width: 0.1.sw,),
                    Padding(
                      padding: EdgeInsets.only(top: 0.07.sh,),
                      child: GestureDetector(
                        child: Image.asset("assets/images/Group 260.png",),
                        onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen(),),),
                      ),
                    ),
              ],
            ),
            SizedBox(height: 0.04.sh,),
            Center(
              child: Text(
                "نسيت كلمة المرور؟",
                style: TextStyle(
                  fontSize: 35.sp,
                  color: Colors.black,
                ),
              ),
            ),
            Center(
              child: Text(
                "من فضلك أدخل البريد الإلكتروني الخاص بك أو\n"
                    "      رقم الهاتف لإعادة تعيين كلمة المرور",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: CustomColor.forgetPasswordText,
                ),
              ),
            ),
            SizedBox(height: 0.03.sh,),
            Center(
              child: Container(
                padding: EdgeInsets.only(right: 0.05.sw),
                width: 0.85.sw,
                height: 0.38.sh,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 0.02.sh,),
                    Text(
                      "البريد الإلكتروني/رقم الهاتف",
                      style: TextStyle(
                          color: CustomColor.forgetPasswordText,
                          fontSize: 16.sp
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 0.021.sh),
                      width: 0.83.sw,
                      alignment: Alignment.center,
                      child: TextFormField(
                        key: _formKey,
                        keyboardType: TextInputType.emailAddress,
                        decoration:  InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: "البريد الإلكتروني/رقم الهاتف",
                          hintStyle: TextStyle(fontSize: 12.sp,color: CustomColor.formText),
                        ),
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty) {
                            return "يْرجي إدخال بريد إلكتروني أو رقم هاتف صحيح";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 0.03.sh,),
                    Padding(
                      padding:  EdgeInsets.only(right: 0.18.sw),
                      child: Text(
                        'إرسال رمز التحقق',
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
                        margin: EdgeInsets.only(right: 0.25.sw),
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
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VerficationCodeScreen()));
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                        }
                       }
                      ),
                  ],
                ),
              ),
            ),
            Container(
              color: CustomColor.background,
              height: 0.2.sh,
            ),
          ],
        ),
      ),
    );
  }
}
