import 'package:flutter/material.dart';
import 'package:moniepoint_take_home_assignment/app/home/ui/widget/tab_bar.dart';
import 'package:moniepoint_take_home_assignment/app/universal_widgets/notification_badge.dart';
import 'package:moniepoint_take_home_assignment/app/utils/globals.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key, this.imagePath, this.price})
      : super(key: key);

  final String? imagePath;
  final String? price;

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
          child: Column(children: [
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
                      imagePath!,
                      height: gSize.height * 0.5,
                      width: gSize.width * 0.7,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      top: 10,
                      left: 10,
                      // width: 35,
                      // height: 35,
                      child: Column(
                        children: [
                          MySmallImages(
                            imagePath: imagePath!,
                          ),
                          MySmallImages(
                            imagePath: imagePath!,
                          ),
                          MySmallImages(
                            imagePath: imagePath!,
                          ),
                          MySmallImages(
                            imagePath: imagePath!,
                          )
                        ],
                      )),
                ]),
              ),
            ),
            SizedBox(
              height: gSize.height * 0.01,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
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
                        width: gSize.width * 0.02,
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
                  const MyTabBar(),
                ],
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        height: gSize.height * 0.14,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: gSize.height * 0.08,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Price",
                        style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: gTextColor)),
                    Text(price!,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                            color: gPrimaryColor))
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: gSize.height * 0.06,
                    width: gSize.width * 0.18,
                    child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(gPrimaryColor),
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              bottomLeft: Radius.circular(4.0)),
                        )),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          const Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            "1",
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: gSize.height * 0.06,
                    width: gSize.width * 0.3,
                    child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade800),
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4.0),
                              bottomRight: Radius.circular(4.0)),
                        )),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Buy Now",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
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
        height: gSize.height * 0.08,
        width: gSize.width * 0.1,
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
              height: gSize.height * 0.03,
              width: gSize.width * 0.5,
              fit: BoxFit.cover,
            ),
          ),
        ]));
  }
}
