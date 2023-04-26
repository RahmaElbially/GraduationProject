import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/Models/colors.dart';
import 'package:graduation_project/Screens/profileScreen/personal_screen.dart';

import '../my_flutter_app_icons3.dart';
import 'collegesScreen/fine_arts_screen.dart';
import 'notification_screen.dart';

class ExamResultScreen extends StatefulWidget {
  const ExamResultScreen({Key? key}) : super(key: key);

  @override
  State<ExamResultScreen> createState() => _ExamResultScreenState();
}

class _ExamResultScreenState extends State<ExamResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.secondaryColor,
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 0.025.sh,right: 0.13.sw,),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 0.03.sw),
                  child: Image.asset("assets/images/test (2).png"),
                ),
                Text(
                  'نتائج الإختبار',
                  style: TextStyle(
                      fontSize: 32.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0.14.sw,),
                  child: GestureDetector(
                    child: Image.asset("assets/images/Group 260.png",),
                    onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> FineArtsScreen(),),),
                  ),
                ),
              ],
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: CustomColor.secondaryColor,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 0.1.sh,
          ),
          Center(
            child: Container(
              width: 0.9.sw,
              height: 0.06.sh,
              padding: EdgeInsets.only(right: 0.05.sw),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Text(
                    "نتائج إختبار القدرات",
                    style: TextStyle(
                      fontSize: 18.sp,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 0.02.sw),
                    child: Text(
                      "2024",
                      style: TextStyle(
                        fontSize: 17.sp,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Century Gothic",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 0.1.sh,
          ),
          ExamResult(isPass: true),
        ],
      ),
    );
  }
}

class ExamResult extends StatelessWidget {
  const ExamResult({Key? key , required this.isPass}) : super(key: key);
  final bool isPass;
  @override
  Widget build(BuildContext context) {
    return Container(
      width : 0.7.sw,
      height : 0.43.sh,
      padding: EdgeInsets.symmetric(vertical: 0.04.sh),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: isPass? Colors.green : Colors.red, width: 1.5),
        boxShadow:[
          BoxShadow(
            color: Colors.grey[400]!,
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(0.5, 0.5),
          ),
        ],
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            isPass? "assets/images/Group 415.png" : 'assets/images/Group 416.png',
            width: 0.47.sw,
          ),
          Text(
            isPass? 'لائق' : 'غير لائق',
            style: TextStyle(
              fontSize: 26.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
