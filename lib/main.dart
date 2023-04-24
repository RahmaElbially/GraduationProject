import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/Screens/authenticationScreen/verfication_code_screen.dart';
import 'package:graduation_project/Screens/authenticationScreen/forgetPassword_screen.dart';
import 'package:graduation_project/Screens/personal_screen.dart';
import 'Screens/collegesScreen/education_quality_screen.dart';
import 'Screens/collegesScreen/fine_arts_screen.dart';
import 'Screens/collegesScreen/home_screen.dart';
import 'Screens/authenticationScreen/login_screen.dart';
import 'Screens/authenticationScreen/signUp_screen.dart';
import 'Screens/edit_personal_screen.dart';
import 'Screens/notification_screen.dart';
import 'Screens/splash_screen.dart';
import 'Screens/editor_screen.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Screens/collegesScreen/technical_education_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: [
            Locale("ar"),
          ],
          locale: Locale("ar"),
          title: 'Flutter Demo',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
            fontFamily: 'Generator',
          ),
          home: child,
        );
      },

      child: EditPersonalScreen(),
    );
  }
}
