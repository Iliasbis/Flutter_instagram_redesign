import 'package:flutter/material.dart';
import 'package:instagram_redesign/util/data/Data.dart';
import 'package:instagram_redesign/util/responsive/SmallText.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ilias_bis"),
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            child: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
              width: width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Column(
                            children: [
                              const SizedBox(height: 20),
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  User.userList[index].userPic,
                                ),
                                radius: 42,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.grey.shade500,
                          ),
                          width: 90,
                          height: 40,
                          child: const SmallText(text: "Hello", color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SmallText(
                        text: "Messages",
                        color: Colors.black,
                        font: FontWeight.w500,
                        size: 22,
                      ),
                      SmallText(
                        text: 'Requests',
                        color: Colors.grey.shade500,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1000,
                    child: ListView.builder(
                      itemCount: User.userList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: width,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.grey.shade400,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(width: 10),
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                        User.userList[index].userPic,
                                      ),
                                      radius: 26,
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SmallText(
                                            text:
                                                User.userList[index].userName),
                                        const SmallText(text: "3 new messages"),
                                      ],
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.camera_alt_outlined),
                                    SizedBox(width: 14),
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
            )
          ],
        ),
      ),
    );
  }
}
