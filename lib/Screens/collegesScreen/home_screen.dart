import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/Screens/collegesScreen/education_quality_screen.dart';
import 'package:graduation_project/Screens/collegesScreen/technical_education_screen.dart';

import '../../Models/colors.dart';
import 'fine_arts_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _collegesscreens=[FineArtsScreen(),EductionQualityScreen(),TechnicalEducationScreen(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.background,
      appBar: AppBar(
        title: Center(
          child: Column(
            children: [
              SizedBox(height: 0.04.sh,),
              Text(
                'إختر الكلية',
                style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.normal
                ),
              ),
              SizedBox(height: 0.09.sh,),
            ],
          ),
        ),
        elevation: 0,
        backgroundColor: CustomColor.background,
      ),
      body: ListView.builder(
        itemBuilder:(context, index) {
          return ContainerImage(image: 'assets/images/2021-05-17.png', title: 'كلية الفنون الجميلة',onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> _collegesscreens[index]));
          });
        },
        itemCount: 3,
        shrinkWrap: true,
      ),
    );
  }
}


class ContainerImage extends StatelessWidget {
  const ContainerImage({Key? key, required this.image, required this.title, this.onTap}) : super(key: key);
  final String image ;
  final String title ;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Column(
          children: [
            Image.asset(
              image,
              width: 0.85.sw,
              opacity: AlwaysStoppedAnimation(0.75),
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 18.sp
              ),
            ),
            SizedBox(
              height: 0.05.sh,
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}




