
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/Screens/personal_screen.dart';

import '../Models/colors.dart';
import '../my_flutter_app_icons3.dart';
import 'collegesScreen/fine_arts_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 1;
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
            padding: EdgeInsets.only(top: 0.03.sh,right: 0.3.sw,),
            child: Row(
              children: [
                Text(
                  'الإشعارات',
                  style: TextStyle(
                      fontSize: 32.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0.2.sw,),
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
      body: Column(
        children: [
          SizedBox(
            height: 0.05.sh,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context,index){
                return NotificationContent(
                  image: "assets/images/70de5977-3516-4993-868a-b184743b2995_120_90.png",
                  title: "إعلان التدريب الصيفي للطلاب  ",
                  text: "يسعدني أن أشارك معكم إعلان معهد تكنولوجيا"
                      " المعلومات , والخاص بفتح التسجيل لرغبات "
                      "الالتحاق بالتدريب علي برامج تكنولوجيا "
                      "متقدمة",
                );
              },
              itemCount: 7,
              shrinkWrap: true,
            ),
          ),
        ],
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

class NotificationContent extends StatelessWidget {
  const NotificationContent({Key? key, required this.image, required this.title, this.onTap, required this.text}) : super(key: key);
  final String image ;
  final String title ;
  final String text ;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 0.04.sw,vertical: 0.015.sh),
            child: Row(
              textDirection: TextDirection.ltr,
              children: [
                Image.asset(image),
                Padding(
                  padding: EdgeInsets.only(left: 0.03.sw),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 20.sp,
                        ),
                      ),
                      SizedBox(
                        width: 0.56.sw,
                        child: Text(
                          text,
                          style: TextStyle(
                            color: CustomColor.notificationText,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Container(
            height: 0.001.sh,
            color: CustomColor.notificationText,
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}