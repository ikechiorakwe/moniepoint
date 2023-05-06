import 'package:flutter/material.dart';
import 'package:moniepoint_take_home_assignment/app/utils/globals.dart';
import 'package:moniepoint_take_home_assignment/app/home/ui/screens/product_detail.dart';

class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);
  List<Widget> get shirts {
    return [
      const MyGridContainer(
        imagePath: "assets/images/3-.png",
        shirtName: "Essentials Men's short-\nsleeve CrewNeck T-shirt",
        price: "\$18.00",
      ),
      const MyGridContainer(
        imagePath: "assets/images/6-.png",
        shirtName: "Essentials Men's short-\nsleeve CrewNeck T-shirt",
        price: "\$12.00",
      ),
      const MyGridContainer(
        imagePath: "assets/images/5-.png",
        shirtName: "Essentials Men's short-\nsleeve CrewNeck T-shirt",
        price: "\$10.00",
      ),
      const MyGridContainer(
        imagePath: "assets/images/4-.png",
        shirtName: "Essentials Men's short-\nsleeve CrewNeck T-shirt",
        price: "\$20.00",
      ),
      const MyGridContainer(
          imagePath: "assets/images/1-.png",
          shirtName: "Essentials Men's short-\nsleeve CrewNeck T-shirt",
          price: "\$15.00"),
      const MyGridContainer(
          imagePath: "assets/images/2-.png",
          shirtName: "Essentials Men's short-\nsleeve CrewNeck T-shirt",
          price: "\$11.00"),
      const MyGridContainer(
          imagePath: "assets/images/6-.png",
          shirtName: "Essentials Men's short-\nsleeve CrewNeck T-shirt",
          price: "\$12.00"),
      const MyGridContainer(
          imagePath: "assets/images/4-.png",
          shirtName: "Essentials Men's short-\nsleeve CrewNeck T-shirt",
          price: "\$10.00"),
    ];
  }

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final shirt = widget.shirts[index];
            return shirt;
          },
          childCount: widget.shirts.length,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }
}

class MyGridContainer extends StatefulWidget {
  const MyGridContainer(
      {Key? key,
      this.imagePath = "assets/images/s4.jpg",
      this.shirtName = "Essentials Men's short-\nsleeve CrewNeck T-shirt",
      this.price = "\$1,00"})
      : super(key: key);

  final String? imagePath;
  final String? shirtName;
  final String? price;

  @override
  State<MyGridContainer> createState() => _MyGridContainerState();
}

class _MyGridContainerState extends State<MyGridContainer> {
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    Size gSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(_createRoute(widget.imagePath!, widget.price!));
      },
      child: Column(
        children: [
          Card(
            elevation: 0,
            color: Colors.grey.shade100,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0)),
            ),
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    widget.imagePath!,
                    height: gSize.height * 0.15,
                    width: gSize.width * 0.9,
                    fit: BoxFit.cover,
                    cacheHeight: 300,
                    cacheWidth: 200,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  width: 35,
                  height: 35,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _hasBeenPressed = !_hasBeenPressed;
                      });
                    },
                    icon: _hasBeenPressed
                        ? const Icon(
                            Icons.favorite,
                            color: gNotification,
                          )
                        : const Icon(Icons.favorite_outline),
                    iconSize: 28.0,
                  ),
                ),
              ],
            ),
          ),
          Card(
              color: Colors.grey.shade50,
              elevation: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Shirt",
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            color: gTextColor,
                          )),
                  SizedBox(height: gSize.height * 0.01),
                  Text(widget.shirtName!,
                      style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                  SizedBox(height: gSize.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.amber.shade400,
                          ),
                          Text("49 | 2998",
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(color: gTextColor, fontSize: 12)),
                        ],
                      ),
                      Text(widget.price!,
                          style: Theme.of(context).textTheme.caption!.copyWith(
                              color: gPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

Route _createRoute(String image, String price) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        ProductDetailScreen(
      imagePath: image,
      price: price,
    ),
    transitionDuration: const Duration(seconds: 2),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.easeInCubic;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
