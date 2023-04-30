import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Models/colors.dart';
import 'collegesScreen/fine_arts_screen.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  final Pages =  List.generate(
    3,
        (index) => Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/pawel-czerwinski-_hcYZYk9Abo-unsplash.png",
              ),),),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 0.01.sh, right: 0.1.sw),
              child: Text(
                "كورس",
                style:
                TextStyle(color: Colors.white, fontSize: 20.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0.012.sh, right: 0.09.sw),
              child: Text(
                "أساسيات التصميم الجرافيكي",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0.001.sh, right: 0.1.sw),
              child: RichText(
                text: TextSpan(
                  text: "20/25",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontFamily: "Century Gothic",
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: " درس",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 0.085.sw),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "استمرار",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 0.09.sw),
                  backgroundColor: Color(0xffFF00DD),
                  shape: RoundedRectangleBorder(
                    //to set border radius to button
                      borderRadius: BorderRadius.circular(15),
                      side:
                      BorderSide(color: Colors.white, width: 1)),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
  var sliderController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.secondaryColor,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(right: 0.8.sw,),
          child: GestureDetector(
            child: Image.asset("assets/images/Group 260.png",),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> FineArtsScreen(),),),
          ),
        ),
        elevation: 0,
        backgroundColor: CustomColor.secondaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 0.05.sw),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "أهلًا,",
                    style: TextStyle(
                      fontSize: 25.sp,
                    ),
                  ),
                  Text(
                    "رحمه البيلي",
                    style: TextStyle(fontSize: 25.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.01.sh,
            ),
            SizedBox(
              width: 0.9.sw,
              height: 0.09.sh,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'البحث عن كورسات ..',
                  hintStyle: TextStyle(
                      fontSize: 22.sp,
                      color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon:Image.asset("assets/images/search.png"),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 2,color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 2,color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.02.sh,
            ),
            SizedBox(
              height: 0.23.sh,
              child: PageView.builder(
                itemBuilder: (_,index){
                  return Pages[index % Pages.length];
                },
                controller: sliderController,
                itemCount: Pages.length,
              ),
            ),
            SizedBox(
              height: 0.03.sh,
            ),
            SmoothPageIndicator(
              controller: sliderController,
              count: Pages.length,
              effect:const ExpandingDotsEffect(
                activeDotColor: Colors.indigo,
                dotColor: Colors.grey,
                dotHeight: 7.0,
                expansionFactor: 4,
                dotWidth: 7,
                spacing: 5.0,
              ),
            ),
            SizedBox(
              height: 0.02.sh,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "ابحث عن دورتك",
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                      "اظهار الكل",
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Color(0xff707070),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 0.02.sh,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
              child: Row(
                children: [
                 ElevatedButton(
                     onPressed: (){},
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Color(0xff0008FF),
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                     padding: EdgeInsets.symmetric(vertical:0.002.sh ,horizontal: 0.08.sw),
                   ),
                     child: Text(
                       "الكل",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 28.sp,
                       ),
                     ),
                 ),
                  Padding(
                    padding: EdgeInsets.only(right: 0.08.sw),
                    child: Text(
                      "الشائع",
                      style: TextStyle(
                        fontSize: 28.sp,
                        color: Color(0xff707070),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 0.02.sh,
            ),
           SizedBox(
               height: 0.35.sh,
             child: GridView(
               padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 mainAxisSpacing: 20,
                 crossAxisSpacing: 20,
                 childAspectRatio: 1.w/0.59.h,
               ),
               children: [
                 Stack(
                   children: [
                     Image.asset("assets/images/Mask Group 1.png"),
                     Container(
                       padding: EdgeInsets.only(top: 0.06.sh,right: 0.03.sw),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "كورس فن الديكور",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 18.sp,
                             ),
                           ),
                           RichText(
                             text: TextSpan(
                               text: "20/25",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 15.sp,
                                 fontFamily: "Century Gothic",
                                 fontWeight: FontWeight.bold,
                               ),
                               children: [
                                 TextSpan(
                                   text: " درس",
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 15.sp,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
                 Stack(
                   children: [
                     Image.asset("assets/images/Mask Group 2.png",),
                     Container(
                       padding: EdgeInsets.only(top: 0.06.sh,right: 0.03.sw),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "كورس التصميم المعماري",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 16.sp,
                             ),
                           ),
                           RichText(
                             text: TextSpan(
                               text: "20/25",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 15.sp,
                                 fontFamily: "Century Gothic",
                                 fontWeight: FontWeight.bold,
                               ),
                               children: [
                                 TextSpan(
                                   text: " درس",
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 15.sp,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
                 Stack(
                   children: [
                     Image.asset("assets/images/Mask Group 3.png",),
                     Container(
                       padding: EdgeInsets.only(top: 0.06.sh,right: 0.03.sw),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "كورس الرسم الزخرفي",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 16.sp,
                             ),
                           ),
                           RichText(
                             text: TextSpan(
                               text: "20/25",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 15.sp,
                                 fontFamily: "Century Gothic",
                                 fontWeight: FontWeight.bold,
                               ),
                               children: [
                                 TextSpan(
                                   text: " درس",
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 15.sp,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
                 Stack(
                   children: [
                     Image.asset("assets/images/Mask Group 4.png",),
                     Container(
                       padding: EdgeInsets.only(top: 0.06.sh,right: 0.03.sw),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "كورس النحت",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 18.sp,
                             ),
                           ),
                           RichText(
                             text: TextSpan(
                               text: "20/25",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 15.sp,
                                 fontFamily: "Century Gothic",
                                 fontWeight: FontWeight.bold,
                               ),
                               children: [
                                 TextSpan(
                                   text: " درس",
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 15.sp,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ],
             )
           ),
          ],
        ),
      ),
    );
  }
}




/*Container(
            width: 0.9.sw,
            height: 0.09.sh,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 2, color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 0.02.sw,left: 0.33.sw),
                  child: Text(
                    "البحث عن كورسات ..",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 22.sp
                    ),
                  ),
                ),
                Image.asset("assets/images/search.png")
              ],
            ),
 ),*/

/*
Container(
                   padding: EdgeInsets.only(left: 0.02.sw),
                   height: 0.065.sh,
                   width: 0.25.sw,
                   decoration: BoxDecoration(
                     color: Color(0xff0008FF),
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Center(
                     child: Text(
                       "الكل",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 28.sp,
                       ),
                     ),
                   ),
                 ),
 */