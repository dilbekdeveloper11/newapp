import 'package:flutter/material.dart';
import 'package:newexam/core/compliments/constants/sizeConfig.dart';

class notif {
  static NotifContiner() {
    return Container(
      height: getHeight(340),
      width: getWidht(345),
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
          SizedBox(
            height: getHeight(42),
            width: getWidht(343),
            child: Text(
              "WHO classifies triple-mutant Covid variant from India as global health risk",
              style: TextStyle(
                fontSize: getHeight(14),
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: getHeight(8)),
          SizedBox(
            height: getHeight(84),
            width: getWidht(343),
            child: Text(
              "A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a...Read More",
              style: TextStyle(
                fontSize: getHeight(14),
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: getHeight(8)),
          Text(
            "Published by Berkeley Lovelace Jr.",
            style: TextStyle(
              fontSize: getHeight(12),
              color: const Color(0xff2E0505),
            ),
          ),
        ],
      ),
    );
  }
}
