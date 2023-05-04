import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:moniepoint_take_home_assignment/app/utils/globals.dart';

class MyNotificationBadge extends StatelessWidget {
  const MyNotificationBadge(
      {Key? key, this.icon, this.iconSize, this.iconColor, this.badgeText = ""})
      : super(key: key);

  final Widget? icon;
  final double? iconSize;
  final Color? iconColor;
  final String badgeText;

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      badgeStyle: badges.BadgeStyle(
        badgeColor: gNotification,
        shape: badges.BadgeShape.square,
        borderRadius: BorderRadius.circular(5),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      ),
      position: badges.BadgePosition.topEnd(top: 2, end: 10),
      badgeContent: Text(
        badgeText,
        style: const TextStyle(color: Colors.white),
      ),
      child: IconButton(
        icon: icon!,
        iconSize: iconSize,
        color: iconColor,
        onPressed: () {},
      ),
    );
  }
}
