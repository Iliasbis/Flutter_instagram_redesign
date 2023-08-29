import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_redesign/util/data/UserProvider.dart';
import 'package:instagram_redesign/util/responsive/SmallText.dart';
import 'package:instagram_redesign/util/reusebale/StoryCircle.dart';
import 'package:provider/provider.dart';

import '../util/data/Data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: height * 0.01),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.04, vertical: height * 0.008),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FaIcon(
                    FontAwesomeIcons.instagram,
                    size: 28,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "message");
                    },
                    child: Icon(
                      CupertinoIcons.location,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.01),
            SizedBox(
              height: height * 0.09,
              width: width,
              child: ListView.builder(
                itemCount: 23,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  int imageNumber = index + 1;
                  return StroyCircle(
                      imagePath: "lib/images/image${imageNumber}.jpg");
                },
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02, vertical: height * 0.01),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: User.userList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.04,
                          vertical: height * 0.02,
                        ),
                        child: SizedBox(
                          height: height / 1.99,
                          width: width,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          User.userList[index].userPic,
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      SmallText(
                                        text: User.userList[index].userName,
                                        font: FontWeight.w500,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                  const Icon(Icons.more_horiz_outlined)
                                ],
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: width - 70,
                                height: height / 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      User.userList[index].userPic,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          if (userProvider
                                              .isLiked(User.userList[index])) {
                                            userProvider.removeFromLiked(
                                              User.userList[index],
                                            );
                                          } else {
                                            userProvider.addToLiked(
                                              User.userList[index],
                                            );
                                          }
                                        },
                                        child: Icon(
                                          userProvider
                                                  .isLiked(User.userList[index])
                                              ? CupertinoIcons.heart_fill
                                              : CupertinoIcons.heart,
                                          color: userProvider
                                                  .isLiked(User.userList[index])
                                              ? Colors.red
                                              : Colors.black,
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      const FaIcon(
                                        FontAwesomeIcons.comment,
                                      ),
                                      const SizedBox(width: 6),
                                      const Icon(
                                        CupertinoIcons.location,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                  const Icon(CupertinoIcons.bookmark),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  SmallText(
                                    text: User.userList[index].userName,
                                    font: FontWeight.w500,
                                  ),
                                  const SizedBox(width: 10),
                                  SmallText(
                                    text: "#flutter",
                                    color: Colors.blue.shade900,
                                  ),
                                  const SizedBox(width: 10),
                                  SmallText(
                                    text: "#programming",
                                    color: Colors.blue.shade900,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 2),
                              Container(
                                width: width,
                                height: 13,
                                child: const Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
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
