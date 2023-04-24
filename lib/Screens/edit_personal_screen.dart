import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/Screens/personal_screen.dart';

import '../Models/colors.dart';
import 'authenticationScreen/login_screen.dart';

class EditPersonalScreen extends StatefulWidget {
  const EditPersonalScreen({Key? key}) : super(key: key);

  @override
  State<EditPersonalScreen> createState() => _EditPersonalScreenState();
}

class _EditPersonalScreenState extends State<EditPersonalScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.background,
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 0.04.sh,right: 0.15.sw,),
            child: Row(
              children: [
                Text(
                  'الصفحة الشخصية',
                  style: TextStyle(
                      fontSize: 32.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0.1.sw,),
                  child: GestureDetector(
                    child: Image.asset("assets/images/Group 260.png",),
                    onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> PersonalScreen(),),),
                  ),
                ),
              ],
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: CustomColor.background,
      ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 0.02.sh,
          ),
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 83,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/girl.jpg'),
                    radius: 80,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 0.195.sh,right: 0.07.sw),
                    height: 0.05.sh,
                    width: 0.07.sw,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add,
                      size: 20.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 0.015.sh,
          ),
          SizedBox(
            height: 0.015.sh,
          ),
          Center(
            child: Text(
              "رحمه البيلي",
              style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 0.05.sw),
                  child: Text(
                    "الإسم",
                    style: TextStyle(
                        fontSize: 22.sp
                    ),
                  ),
                ),
                SizedBox(
                  width: 0.87.sw,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0.05.sw),
                  child: Text(
                    "الإيميل",
                    style: TextStyle(
                        fontSize: 22.sp
                    ),
                  ),
                ),
                SizedBox(
                  width: 0.87.sw,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0.05.sw),
                  child: Text(
                    "كلمة السر",
                    style: TextStyle(
                        fontSize: 22.sp
                    ),
                  ),
                ),
                SizedBox(
                  width: 0.87.sw,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0.05.sw),
                  child: Text(
                    "الرقم القومي",
                    style: TextStyle(
                        fontSize: 22.sp
                    ),
                  ),
                ),
                SizedBox(
                  width: 0.87.sw,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0.05.sw),
                  child: Text(
                    "الشعبة",
                    style: TextStyle(
                        fontSize: 22.sp
                    ),
                  ),
                ),
                SizedBox(
                  width: 0.87.sw,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.05.sh,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0.45.sw),
                  child: SizedBox(
                    height: 0.08.sh,
                    width: 0.4.sw,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> PersonalScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,//background color of button//border width and color
                          elevation: 5, //elevation of button
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(25)
                          ),
                        ),
                        child: Text(
                          "حفظ البيانات",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.05.sh,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}
