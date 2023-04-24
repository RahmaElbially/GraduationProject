import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalListViewFine extends StatelessWidget {
  const HorizontalListViewFine({Key? key, required this.image, required this.title, this.onTap}) : super(key: key);
  final String image ;
  final String title ;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 0.09.sw),
      child: Stack(
        children: [
          Image.asset(
            image,
            width: 0.5.sw,
          ),
          Positioned(
            top: 0.125.sh,
            right: 0.16.sw,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}




class HorizontalListViewTech extends StatelessWidget {
  const HorizontalListViewTech({Key? key, required this.image, required this.title, this.onTap}) : super(key: key);
  final String image ;
  final String title ;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 0.09.sw),
      child: Stack(
        children: [
          Image.asset(
            image,
            width: 0.5.sw,
          ),
          Positioned(
            top: 0.125.sh,
            right: 0.08.sw,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}