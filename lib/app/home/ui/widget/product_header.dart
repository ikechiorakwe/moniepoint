import 'package:flutter/material.dart';
import 'package:moniepoint_take_home_assignment/app/utils/globals.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
      color: Colors.grey.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Best Sale Product",
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  wordSpacing: 0.7,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22)),
          Text(
            "See more",
            style: Theme.of(context).textTheme.headline6!.copyWith(
                color: gPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ],
      ),
    );
  }
}
