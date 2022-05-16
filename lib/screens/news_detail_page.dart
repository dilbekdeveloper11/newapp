import 'package:flutter/material.dart';
import 'package:newexam/core/compliments/constants/sizeConfig.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/darsimtihon.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: getHeight(404),
              child: Container(
                height: getHeight(438),
                width: getWidht(375),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      getHeight(16),
                    ),
                    topRight: Radius.circular(
                      getHeight(16),
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: getHeight(40),
                    left: getWidht(10),
                    right: getWidht(10),
                    bottom: getHeight(10),
                  ),
                  child: Text(
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                    style: TextStyle(
                      fontSize: getHeight(14),
                      color: const Color(0xff2E0505),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              height: getHeight(1464),
              left: getWidht(284),
              child: Container(
                height: getHeight(56),
                width: getWidht(56),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/FAB.png",
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: getHeight(294),
              left: getWidht(32),
              child: Container(
                height: getHeight(141),
                width: getWidht(311),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(getHeight(16)),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: getHeight(16), left: getWidht(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sunday, 9 May 2021",
                        style: TextStyle(
                          fontSize: getHeight(12),
                          color: const Color(0xff2E0505),
                        ),
                      ),
                      SizedBox(height: getHeight(8)),
                      SizedBox(
                        height: getHeight(58),
                        width: getWidht(263),
                        child: Text(
                          "Crypto investors should be prepared to lose all their money, BOE governor says",
                          style: TextStyle(
                            fontSize: getHeight(16),
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff2E0505),
                          ),
                        ),
                      ),
                      SizedBox(height: getHeight(12)),
                      Text(
                        "Published by Ryan Browne",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: getHeight(10),
                          color: const Color(0xff2E0505),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
