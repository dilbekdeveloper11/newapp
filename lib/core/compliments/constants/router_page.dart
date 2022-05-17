import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newexam/screens/home/home_page.dart';
import 'package:newexam/screens/news_detail_page.dart';
import 'package:newexam/screens/notifications/notifications.dart';

class RouteGenerator {
  static Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const HomePage());
      case "/newdetail":
        return MaterialPageRoute(builder: (context) => const NewsDetailPage());
      case "/notification":
        return MaterialPageRoute(builder: (context) => const Notifications());
    }
  }
}
