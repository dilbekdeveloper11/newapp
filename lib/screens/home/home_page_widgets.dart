import 'package:flutter/material.dart';
import 'package:newexam/core/compliments/constants/sizeConfig.dart';

class filterCont {
  static Containerim() {
    return Container(
      height: getHeight(32),
      width: getWidht(114),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getHeight(16)),
        border: Border.all(
          color: Colors.grey.withOpacity(0.3),
        ),
      ),
      child: Center(
        child: Text(
          "Recommended",
          style: TextStyle(
            fontSize: getHeight(12),
            fontWeight: FontWeight.w600,
            color: const Color(0xff041E2F),
          ),
        ),
      ),
    );
  }
}
