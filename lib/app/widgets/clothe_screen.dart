import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:moniepoint_take_home_assignment/app/utils/globals.dart';
import 'package:moniepoint_take_home_assignment/app/widgets/notification_badge.dart';

class MyClotheDisplayScreen extends StatelessWidget {
  const MyClotheDisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size gSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.chevron_left,
                color: Colors.black,
                size: 40.0,
              )),
        ),
        actions: [
          const Icon(
            Icons.favorite,
            color: gNotification,
            size: 35.0,
          ),
          SizedBox(width: gSize.width * 0.05),
          const Icon(
            Icons.share,
            color: Colors.black,
            size: 35.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: MyNotificationBadge(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              iconSize: 35.0,
              badgeText: "1",
              iconColor: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: gSize.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade100),
              height: gSize.height * 0.4,
              width: gSize.width * 1.0,
              child: Stack(children: [
                Align(
                  child: Image.asset(
                    "assets/images/s3.jpg",
                    height: gSize.height * 0.3,
                    width: gSize.width * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    top: 10,
                    left: 10,
                    // width: 35,
                    // height: 35,
                    child: Column(
                      children: const [
                        MySmallImages(
                          imagePath: "assets/images/s3.jpg",
                        ),
                        MySmallImages(
                          imagePath: "assets/images/s3.jpg",
                        ),
                        MySmallImages(
                          imagePath: "assets/images/s3.jpg",
                        ),
                        MySmallImages(
                          imagePath: "assets/images/s3.jpg",
                        )
                      ],
                    )),
              ]),
            ),
          ),
          SizedBox(
            height: gSize.height * 0.035,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.grey,
                      size: 26,
                    ),
                    SizedBox(
                      width: gSize.width * 0.03,
                    ),
                    Text("tokobaju.id",
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Colors.grey, fontSize: 17)),
                  ],
                ),
                SizedBox(
                  height: gSize.height * 0.01,
                ),
                Text("Essentials Men's short-sleeve\nCrewNeck T-shirt",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: gSize.height * 0.016,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.amber.shade400,
                        ),
                        Text("4.9 Ratings",
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    color: Colors.grey,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                      ],
                    ),
                    const Icon(
                      Icons.circle,
                      size: 8,
                      color: Colors.grey,
                    ),
                    Text("2.3+ Reviews",
                        style: Theme.of(context).textTheme.caption!.copyWith(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                    const Icon(
                      Icons.circle,
                      size: 8,
                      color: Colors.grey,
                    ),
                    Text("2.9+ Sold",
                        style: Theme.of(context).textTheme.caption!.copyWith(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  height: gSize.height * 0.016,
                ),
                MyTabBar(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class MySmallImages extends StatelessWidget {
  const MySmallImages({Key? key, this.imagePath}) : super(key: key);

  final String? imagePath;
  @override
  Widget build(BuildContext context) {
    Size gSize = MediaQuery.of(context).size;
    return Container(
        height: gSize.height * 0.06,
        width: gSize.width * 0.09,
        child: Column(children: [
          Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(1.0),
                  topRight: Radius.circular(1.0)),
            ),
            child: Image.asset(
              imagePath!,
              // height: gSize.height * 0.03,
              // width: gSize.width * 0.01,
              fit: BoxFit.cover,
            ),
          ),
        ]));
  }
}

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size gSize = MediaQuery.of(context).size;
    return Container(
      height: gSize.height * 0.06,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: gPrimaryColor,
            labelStyle: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontSize: 17, fontWeight: FontWeight.w600),
            tabs: const [
              Tab(
                text: 'About Item',
              ),
              Tab(
                text: 'Reviews',
              )
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text: 'Hello',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 30)),
                          TextSpan(
                              text: ' World',
                              style:
                                  TextStyle(fontSize: 30)), // this is invisible
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text: 'Hello',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 30)),
                          TextSpan(
                              text: ' World',
                              style:
                                  TextStyle(fontSize: 30)), // this is invisible
                        ]),
                      ),
                    )
                  ],
                ),
                const Text('Hello')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
