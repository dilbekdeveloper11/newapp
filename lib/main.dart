import 'package:flutter/material.dart';
import 'package:newexam/core/compliments/constants/router_page.dart';
import 'package:newexam/screens/Error_page.dart';
import 'package:newexam/screens/home/home_page.dart';
import 'package:newexam/screens/news_detail_page.dart';
import 'package:newexam/screens/notifications/notifications.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
