import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newexam/core/compliments/constants/sizeConfig.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 1);
    SizeConfig.init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: getHeight(60), left: getWidht(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    ],
                  ),
                ),
                SizedBox(width: getWidht(16)),
                Container(
                  height: getHeight(32),
                  width: getWidht(32),
                  child: Image.asset("assets/images/Frame 1.png"),
                )
              ],
            ),
            SizedBox(height: getHeight(24)),
            Row(
              children: [
                Text(
                  "Latest News",
                  style: TextStyle(
                    fontSize: getHeight(18),
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: getWidht(172)),
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: getHeight(12),
                    fontWeight: FontWeight.w600,
                    color: Color(0xff0080FF),
                  ),
                ),
                SizedBox(width: getWidht(16)),
                Icon(
                  Icons.arrow_forward,
                  size: getHeight(15),
                  color: const Color(0xff0080FF),
                )
              ],
            ),
            SizedBox(height: getHeight(16)),
            Container(
              height: getHeight(242),
              child: PageView(
                pageSnapping: false,
                scrollDirection: Axis.horizontal,
                controller: controller,
                children: [
                  Container(
                    height: getHeight(240),
                    width: getWidht(321),
                    padding: EdgeInsets.symmetric(horizontal: getWidht(3)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getHeight(8)),
                      color: Colors.amber,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: getHeight(80), left: getWidht(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "by Ryan Browne",
                            style: TextStyle(
                              fontSize: getHeight(getHeight(10)),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: getHeight(63),
                            width: getHeight(289),
                            child: Text(
                              "Crypto investors should be prepared to lose all their money, BOE governor says",
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
                              "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                              style: TextStyle(
                                fontSize: getHeight(10),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: getHeight(240),
                    width: getWidht(321),
                    padding: EdgeInsets.symmetric(horizontal: getWidht(3)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(getHeight(8)),
                        color: Colors.black),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
