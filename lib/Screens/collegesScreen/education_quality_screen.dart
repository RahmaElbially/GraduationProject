import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/Models/colors.dart';
import 'package:graduation_project/Screens/courses_screen.dart';
import 'package:graduation_project/Screens/notification_screen.dart';
import 'package:graduation_project/Screens/profileScreen/personal_screen.dart';

import '../../Models/horizontal_listView.dart';
import '../../my_flutter_app_icons3.dart';
import '../exam_result_screen.dart';


class EductionQualityScreen extends StatefulWidget {
  const EductionQualityScreen({Key? key}) : super(key: key);

  @override
  State<EductionQualityScreen> createState() => _EductionQualityScreenState();
}

class _EductionQualityScreenState extends State<EductionQualityScreen> {
  int _currentIndex = 2;
  List _screens=[PersonalScreen(),NotificationScreen(),EductionQualityScreen(),];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> _screens[_currentIndex]));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.secondaryColor,
      appBar: AppBar(
        title: Center(
          child: Column(
            children: [
              Text(
                'الصفحة الرئيسية',
                style: TextStyle(
                    fontSize: 27.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.normal
                ),
              ),
            ],
          ),
        ),
        elevation: 0,
        backgroundColor: CustomColor.background,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 0.18.sh,
              decoration: BoxDecoration(
                color: CustomColor.background,
                borderRadius: BorderRadius.only(
                  bottomLeft:Radius.elliptical(200, 100),
                  bottomRight:Radius.elliptical(200, 100),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.02.sh,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0.05.sw),
                  child: Text(
                    "الأقسام",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.sp
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 0.22.sh,
                  child: ListView.builder(
                    itemBuilder:(context,index){
                      return HorizontalListViewTech(image: "assets/images/032fecc48ae68e77acb7c03a32ed6036.png", title: "قسم العبير المجسم");
                    },
                    scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    itemCount: 5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0.05.sw),
                  child: Text(
                    "القائمة",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 27.sp
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 0.15.sh,
                          width: 0.435.sw,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 0.75)
                              ),
                            ],
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 0.02.sw,left: 0.02.sw),
                                  child: Image.asset("assets/images/personal.png",height: 0.06.sh,),
                                ),
                                Text(
                                  "البيانات الشخصية",
                                  style: TextStyle(fontSize: 15.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () =>  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> PersonalScreen())),
                      ),
                      Container(
                        height: 0.15.sh,
                        width: 0.435.sw,
                        margin: EdgeInsets.only(right: 0.04.sw),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                blurRadius: 15.0,
                                offset: Offset(0.0, 0.75)
                            ),
                          ],
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 0.015.sw,left: 0.02.sw),
                                child: Image.asset("assets/images/register.png",height: 0.06.sh,),
                              ),
                              Text(
                                "تسجيل إختبار القدرات",
                                style: TextStyle(fontSize: 13.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.04.sw,vertical: 0.02.sh),
                  child: Row(
                    children: [
                      Container(
                        height: 0.15.sh,
                        width: 0.435.sw,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                blurRadius: 15.0,
                                offset: Offset(0.0, 0.75)
                            ),
                          ],
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 0.02.sw,left: 0.02.sw),
                                child: Image.asset("assets/images/test.png",height: 0.06.sh),
                              ),
                              Text(
                                "بدء إختبار القدرات",
                                style: TextStyle(fontSize: 14.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          height: 0.15.sh,
                          width: 0.435.sw,
                          margin: EdgeInsets.only(right: 0.04.sw),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 0.75)
                              ),
                            ],
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 0.015.sw,left: 0.02.sw),
                                  child: Image.asset("assets/images/result.png"),
                                ),
                                Text(
                                  "نتائج الإختبار",
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () =>  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ExamResultScreen())),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0.04.sw,right: 0.04.sw,bottom: 0.05.sh),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 0.15.sh,
                          width: 0.435.sw,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 0.75)
                              ),
                            ],
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 0.02.sw,left: 0.02.sw),
                                  child: Image.asset("assets/images/booking.png",height: 0.06.sh,),
                                ),
                                Text(
                                  "حجز الكورسات",
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () =>  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> CoursesScreen())),
                      ),
                      Container(
                        height: 0.15.sh,
                        width: 0.435.sw,
                        margin: EdgeInsets.only(right: 0.04.sw),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                blurRadius: 15.0,
                                offset: Offset(0.0, 0.75)
                            ),
                          ],
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 0.015.sw,left: 0.02.sw),
                                child: Image.asset("assets/images/trialtest.png"),
                              ),
                              Text(
                                "الإمتحان التجريبي",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        iconSize: 27,
        items: [
          BottomNavigationBarItem(
            label: "Personal",
            icon: Icon(MyFlutterApp.user),
          ),
          BottomNavigationBarItem(
            label: "Notification",
            icon: Icon(MyFlutterApp.union_3,),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(MyFlutterApp.home_1,),
          ),
        ],
      ),
    );
  }
}







// كود ال GridView

// Expanded(
// child: Padding(
// padding:  EdgeInsets.symmetric(horizontal: 0.05.sw),
// child: GridView.builder(
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// mainAxisSpacing: 20,
// crossAxisSpacing: 20,
// childAspectRatio: 0.9.w/0.52.h,
// ),
// itemCount: 6,
// itemBuilder: (context, index) {
// return Container(
// color: Colors.white,
// child: Center(
// child: Row(
// children: [
// Padding(
// padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
// child:
// Image.asset("assets/images/personal.png"),
// ),
// Text(
// "تسجيل إختبار القدرات",
// style: TextStyle(fontSize: 14.sp),
// ),
// ],
// ),
// ),
// );
// },
// ),
// ),
// ),