import 'package:flutter/material.dart';
import 'package:moniepoint_take_home_assignment/app/widgets/notification_badge.dart';

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
                color: Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              height: gSize.height * 0.05,
              child: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
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
              iconSize: 40.0,
              badgeText: "1",
              iconColor: Colors.black87,
            )),
        const Expanded(
            flex: 2,
            child: MyNotificationBadge(
                icon: Icon(
                  Icons.comment_outlined,
                ),
                iconSize: 40.0,
                badgeText: "9+",
                iconColor: Colors.black87))
      ],
    );
  }
}
