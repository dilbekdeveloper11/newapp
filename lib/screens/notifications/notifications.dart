import 'package:flutter/material.dart';
import 'package:newexam/core/compliments/constants/sizeConfig.dart';
import 'package:newexam/screens/notifications/notification_widgets.dart';

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
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return notif.NotifContiner();
            },
          ),
        ),
      ),
    );
  }
}
