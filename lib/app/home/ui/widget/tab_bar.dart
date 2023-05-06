import 'package:flutter/material.dart';
import 'package:moniepoint_take_home_assignment/app/utils/globals.dart';

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
      color: Colors.grey.shade100,
      height: gSize.height * 0.2,
      child: Column(
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
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Brand:',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: gTextColor)),
                          TextSpan(
                              text: '   Versace',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          Colors.black)), // this is invisible
                        ]),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Color:',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: gTextColor)),
                          TextSpan(
                              text: '   Burgundy',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          Colors.black)), // this is invisible
                        ]),
                      )
                    ],
                  ),
                ),
                const Text('')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
