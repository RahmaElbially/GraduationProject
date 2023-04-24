import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:graduation_project/Screens/authenticationScreen/new_password_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


import '../../Models/colors.dart';
import 'forgetPassword_screen.dart';
import 'login_screen.dart';
class VerficationCodeScreen extends StatefulWidget {
  final String? phoneNumber;
  const VerficationCodeScreen({Key? key,this.phoneNumber}) : super(key: key);

  @override
  State<VerficationCodeScreen> createState() => _VerficationCodeScreenState();
}

class _VerficationCodeScreenState extends State<VerficationCodeScreen> {
  var onTapRecognizer;
  TextEditingController textEditingController = TextEditingController();

  // ..text = "123456";

  late StreamController<ErrorAnimationType> errorController;

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }
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
                    onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ForgetPasswordScreen(),),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 0.04.sh,),
            Center(
              child: Text(
                "قم بإدخال الكود",
                style: TextStyle(
                  fontSize: 35.sp,
                  color: Colors.black,
                ),
              ),
            ),
            Center(
              child: Text(
                "ادخل رمز التحقق الذي ارسلناه لك علي عنوان \n"
                    "     بريدك الإلكتروني او رقم الهاتف",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: CustomColor.forgetPasswordText,
                ),
              ),
            ),
            SizedBox(height: 0.03.sh,),
            Center(
              child: Container(
                width: 0.85.sw,
                height: 0.42.sh,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 0.023.sh,),
                    Padding(
                        padding: EdgeInsets.only(right: 0.05.sw),
                      child: Text(
                        "ادخل الكود",
                        style: TextStyle(
                            color: CustomColor.forgetPasswordText,
                            fontSize: 20.sp
                        ),
                      ),
                    ),
                    SizedBox(height: 0.013.sh,),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.01.sh, horizontal: MediaQuery.of(context).size.width*0.18.w),
                      child: Form(
                        key: formKey,
                        child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: PinCodeTextField(
                            appContext: context,
                            pastedTextStyle:const TextStyle(
                              color: CustomColor.background,
                              fontWeight: FontWeight.bold,
                            ),
                            length: 4,

                            animationType: AnimationType.fade,
                            validator: (v) {
                              if (v!.length < 4) {
                                return "أدخل باقي الرقم";
                              } else {
                                return null;
                              }
                            },
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.underline,
                              activeFillColor: Colors.white,
                              activeColor: Colors.black,
                              inactiveColor: Colors.grey,
                              selectedColor: CustomColor.background,
                            ),
                            cursorColor: Colors.black,
                            animationDuration: const Duration(milliseconds: 300),
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Helvetica",
                              color: Colors.black,
                              fontSize: 22.sp,
                            ),
                            errorAnimationController: errorController,
                            controller: textEditingController,
                            keyboardType: TextInputType.number,
                            onCompleted: (v) {
                              print("Completed");
                            },
                            // onTap: () {
                            //   print("Pressed");
                            // },
                            onChanged: (value) {
                              print(value);
                              setState(() {
                                currentText = value;
                              });
                            },
                            beforeTextPaste: (text) {
                              print("Allowing to paste $text");
                              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                              //but you can show anything you want here, like your pop up saying wrong paste format or etc
                              return true;
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.023.sh,),
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
                      onTap: ()=>
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NewPasswordScreen(),),),
                    ),
                    SizedBox(height: 0.013.sh,),
                    Padding(
                      padding: EdgeInsets.only(right: 0.05.sw),
                      child: GestureDetector(
                        child: Text(
                          "إعادة إرسال الرمز؟",
                          style: TextStyle(
                            color: CustomColor.forgetPasswordText,
                            fontSize: 15.sp,
                            decoration: TextDecoration.underline
                          ),
                        ),
                        onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetPasswordScreen(),
                          ),
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

