import 'package:flutter/material.dart';
import 'package:instagram_redesign/util/responsive/MediumText.dart';
import 'package:instagram_redesign/util/responsive/SmallText.dart';

import '../util/data/Data.dart';

class LikePage extends StatelessWidget {
  const LikePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const MediumText(
          text: "Notifications",
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, "/");
            },
            child: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: User.userList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey.shade400,
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 20),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            User.userList[index].userPic,
                          ),
                          radius: 26,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallText(text: User.userList[index].userName),
                            const SmallText(text: "Notification Description ....."),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
