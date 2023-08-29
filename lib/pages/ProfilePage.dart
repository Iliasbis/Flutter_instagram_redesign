// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';

import 'package:instagram_redesign/util/data/Data.dart';
import 'package:instagram_redesign/util/responsive/MediumText.dart';
import 'package:instagram_redesign/util/responsive/SmallText.dart';
import 'package:instagram_redesign/util/reusebale/ProfileNumber.dart';
import 'package:instagram_redesign/util/reusebale/StoryCircle.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  @override
  final int _currentTabIndex = 0;
  late final _tabController =
      TabController(length: 2, vsync: this, initialIndex: _currentTabIndex);
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.04, vertical: height * 0.008),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MediumText(text: "ILias Bis"),
                      Icon(Icons.more_horiz_rounded),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          "lib/images/image24.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 4),
                  const SmallText(
                    text: "ILias Bis",
                    font: FontWeight.w500,
                    size: 20,
                  ),
                  SmallText(
                    text: "Mobile Developper",
                    color: Colors.grey.shade700,
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProfileNumber(number: 68, text: "Posts"),
                      ProfileNumber(number: 529, text: "Followers"),
                      ProfileNumber(number: 122, text: "Following"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: height * 0.09,
                    child: const Row(
                      children: [
                        StroyCircle(imagePath: "lib/images/image17.jpg"),
                        StroyCircle(imagePath: "lib/images/image18.jpg"),
                        StroyCircle(imagePath: "lib/images/image19.jpg"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                          width: width,
                          child: TabBar(
                            controller: _tabController,
                            tabs: [
                              const Icon(Icons.grid_view_rounded),
                              const Icon(Icons.person_pin_outlined),
                            ],
                            indicatorColor: Colors.black,
                            labelColor: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 500,
                          width: width,
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              SizedBox(
                                child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                  ),
                                  itemCount: User.userList.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.grey,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              User.userList[index].userPic,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                  ),
                                  itemCount: 8,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.grey,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              User.userList[index].userPic,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
