import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newexam/core/compliments/constants/sizeConfig.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: getHeight(60), left: getWidht(15)),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: getHeight(32),
                  width: getWidht(296),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: getWidht(16)),
                      Text(
                        "Dogecoin to the Moon",
                        style: TextStyle(
                          fontSize: getHeight(12),
                          color: const Color(0xff818181),
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.search,
                        size: getHeight(18),
                        color: Colors.grey,
                      ),
                      SizedBox(width: getWidht(16)),
                      SvgPicture.asset("assets/images/Frame 1.svg")
                    ],
                  ),
                ),
                SizedBox(width: getWidht(16)),
                Image.asset("/home/dilbek/Desktop/Git Hub Projects/yangiloyiha/newexam/assets/images/Frame 1.png")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
