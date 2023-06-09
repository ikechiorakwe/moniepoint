import 'package:flutter/material.dart';
import 'package:moniepoint_take_home_assignment/app/universal_widgets/notification_badge.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size gSize = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black26),
              ),
              height: gSize.height * 0.05,
              child: const TextField(
                decoration: InputDecoration(
                    filled: false,
                    fillColor: Colors.transparent,
                    border: InputBorder.none,
                    focusColor: Colors.black,
                    // border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.black,
                    // hintText: "search",
                    labelText: 'Search'),
              ),
            )),
        const Expanded(
            flex: 2,
            child: MyNotificationBadge(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              iconSize: 30.0,
              badgeText: "1",
              iconColor: Colors.black,
            )),
        const Expanded(
            flex: 2,
            child: MyNotificationBadge(
                icon: Icon(
                  Icons.comment_outlined,
                ),
                iconSize: 30.0,
                badgeText: "9+",
                iconColor: Colors.black))
      ],
    );
  }
}
