import 'package:flutter/material.dart';
import 'package:newexam/core/compliments/constants/base_view_page.dart';
import 'package:newexam/core/compliments/constants/sizeConfig.dart';
import 'package:newexam/screens/home/home_page.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BaseView(viewModal: HomePage(),
      onPageBuilder:(context,widget)=> Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Error Page",
            style: TextStyle(
              fontSize: getHeight(25),
              color: Colors.red,
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/993768b8e2b9e752c082a6657dc0f218.png",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
