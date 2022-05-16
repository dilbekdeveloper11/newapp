import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newexam/core/compliments/components.dart';
import 'package:newexam/core/compliments/constants/sizeConfig.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 1);
    SizeConfig.init(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: getHeight(30), left: getWidht(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      child: Container(
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
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: getHeight(315),
                                width: getWidht(double.infinity),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(getHeight(12)),
                                    topRight: Radius.circular(getHeight(12)),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: getHeight(32), left: getWidht(15)),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Filter",
                                            style: TextStyle(
                                              fontSize: getHeight(22),
                                              fontWeight: FontWeight.w700,
                                              color: const Color(0xff041E2F),
                                            ),
                                          ),
                                          SizedBox(width: getWidht(209)),
                                          Container(
                                            height: getHeight(32),
                                            width: getWidht(81.8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHeight(16),
                                              ),
                                              border: Border.all(
                                                color: const Color(0xff041E2F),
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(width: getWidht(16)),
                                                const Icon(
                                                  Icons
                                                      .restore_from_trash_rounded,
                                                ),
                                                Text(
                                                  "Reset",
                                                  style: TextStyle(
                                                    fontSize: getHeight(12),
                                                    fontWeight: FontWeight.w700,
                                                    color:
                                                        const Color(0xff041E2F),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
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
                      PageViewWidgets.PageContainer(
                        byTitle: "by Ryan Browne",
                        bigText:
                            "Crypto investors should be prepared to lose all their money, BOE governor says",
                        smallText:
                            "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                      )
                    ],
                  ),
                ),
                SizedBox(height: getHeight(24)),
                Container(
                  height: getHeight(33),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Container(
                              height: getHeight(32),
                              width: getWidht(76),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(getHeight(8)),
                                color: index == 0
                                    ? const Color(0xffFF3A44)
                                    : Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "Healthy",
                                  style: TextStyle(
                                    fontSize: getHeight(12),
                                    fontWeight: FontWeight.w600,
                                    color: index == 0
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: getWidht(8),
                            )
                          ],
                        );
                      }),
                ),
                SizedBox(height: getHeight(16)),
                Category.Categorys(),
                SizedBox(height: getHeight(16)),
                Category.Categorys(),
                SizedBox(height: getHeight(16)),
                Category.Categorys(),
                SizedBox(height: getHeight(16)),
                Category.Categorys(),
                SizedBox(height: getHeight(16)),
                Category.Categorys(),
                SizedBox(height: getHeight(16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
