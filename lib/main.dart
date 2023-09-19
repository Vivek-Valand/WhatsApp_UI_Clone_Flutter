import 'package:flutter/material.dart';
import 'package:whatsapp/CallsWidget.dart';
import 'package:whatsapp/ChatBottomBar.dart';
import 'package:whatsapp/ChatSample.dart';
import 'package:whatsapp/ChatsWidget.dart';
import 'package:whatsapp/HomePage.dart';
import 'package:whatsapp/HomePage1.dart';
import 'package:whatsapp/SplashScreen.dart';
import 'package:whatsapp/StatusWidget.dart';
import 'package:whatsapp/chatPage.dart';
import 'package:whatsapp/settingsPage.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Color(0xFF075E55),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
      "/" : (context) => SplashScreen(),
      "HomePage1" : (context) => HomePage1(),
      "settingsPage" : (context) => settingsPage(),
      "chatPage" : (context) => chatPage(),
      "CallsWidget" : (context) => CallsWidget(),
      "ChatBottomBar" : (context) => ChatBottomBar(),
      "ChatSample" : (context) => ChatSample(),
      "ChatsWidget" : (context) => ChatsWidget(),
      "StatusWidget" : (context) => StatusWidget(),
      },
    );
  }
}
