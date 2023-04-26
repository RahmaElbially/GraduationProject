
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/Screens/authenticationScreen/login_screen.dart';
import 'package:graduation_project/Screens/profileScreen/edit_personal_screen.dart';
import 'package:graduation_project/my_font_icons.dart';

import '../../Models/colors.dart';
import '../../my_flutter_app_icons3.dart';
import '../collegesScreen/fine_arts_screen.dart';
import '../notification_screen.dart';

class PersonalScreen extends StatefulWidget {
  const PersonalScreen({Key? key}) : super(key: key);

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    List _screens=[PersonalScreen(),NotificationScreen(),FineArtsScreen(),];

    void _updateIndex(int value) {
      setState(() {
        _currentIndex = value;
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> _screens[_currentIndex]));
      });
    }
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
                    onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> FineArtsScreen(),),),
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
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 83,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/girl.jpg'),
                  radius: 80,
                ),
              ),
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
            SizedBox(
              height: 0.03.sh,
            ),
            SizedBox(
              height: 0.08.sh,
              width: 0.5.sw,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> EditPersonalScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,//background color of button//border width and color
                    elevation: 5, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(25)
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 0.01.sw),
                        child: Icon(
                          Icons.keyboard_double_arrow_right,color: Colors.black,
                          size: 25.sp,
                        ),
                      ),
                      Text(
                        "تعديل الصفحة",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ],
                  )
              ),
            ),
            SizedBox(
              height: 0.04.sh,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 0.05.sw,left: 0.05.sw),
                  child: Container(
                    height: 0.07.sh,
                    width: 0.14.sw,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      Icons.settings_outlined,
                      size: 25.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0.35.sw),
                  child: Text(
                      "الإعدادات",
                    style: TextStyle(
                      fontSize: 30.sp
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> EditPersonalScreen()));
                  },
                  child: Container(
                    height: 0.05.sh,
                    width: 0.07.sw,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.keyboard_double_arrow_left,
                      size: 20.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.03.sh,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 0.05.sw,left: 0.05.sw),
                  child: Container(
                    height: 0.07.sh,
                    width: 0.14.sw,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      MyFont.logout_application,
                      size: 20.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0.26.sw),
                  child: Text(
                    "تسجيل الخروج",
                    style: TextStyle(
                        fontSize: 27.sp
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                  },
                  child: Container(
                    height: 0.05.sh,
                    width: 0.07.sw,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.keyboard_double_arrow_left,
                      size: 20.sp,
                      color: Colors.black,
                    ),
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
