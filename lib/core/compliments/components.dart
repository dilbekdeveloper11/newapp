import 'package:flutter/material.dart';
import 'package:newexam/core/compliments/constants/sizeConfig.dart';

class PageViewWidgets {
  static PageContainer(
      {required String byTitle,
      required String bigText,
      required String smallText}) {
    return Container(
      height: getHeight(240),
      width: getWidht(321),
      padding: EdgeInsets.symmetric(horizontal: getWidht(3)),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(
            "assets/images/download.jpeg",
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(getHeight(8)),
        color: Colors.amber,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: getHeight(80), left: getWidht(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              byTitle,
              style: TextStyle(
                fontSize: getHeight(getHeight(10)),
                color: Colors.white,
              ),
            ),
            Container(
              height: getHeight(63),
              width: getHeight(289),
              child: Text(
                bigText,
                style: TextStyle(
                  fontSize: getHeight(18),
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: getHeight(31)),
            Container(
              height: getHeight(28),
              width: getHeight(289),
              child: Text(
                smallText,
                style: TextStyle(
                  fontSize: getHeight(10),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
