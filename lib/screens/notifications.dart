import 'package:flutter/material.dart';
import 'package:newexam/core/compliments/constants/sizeConfig.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Hot Updates",
          style: TextStyle(
            fontSize: getHeight(17),
            fontWeight: FontWeight.w600,
            color: const Color(0xffFF3A44),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: getHeight(16), left: getWidht(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getHeight(128),
              width: getWidht(345),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(getHeight(8)),
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/download.jpeg",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: getHeight(16)),
            Text(
              "Monday, 10 May 2021",
              style: TextStyle(
                fontSize: getHeight(12),
                color: const Color(0xff2E0505),
              ),
            ),
            SizedBox(height: getHeight(8)),
            
          ],
        ),
      ),
    );
  }
}
