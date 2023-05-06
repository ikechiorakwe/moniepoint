import 'package:flutter/material.dart';
import 'package:moniepoint_take_home_assignment/app/utils/globals.dart';
import 'package:moniepoint_take_home_assignment/app/widgets/clothe_screen.dart';

class MyProductGrid extends StatefulWidget {
  const MyProductGrid({Key? key}) : super(key: key);

  @override
  State<MyProductGrid> createState() => _MyProductGridState();
}

class _MyProductGridState extends State<MyProductGrid> {
  @override
  Widget build(BuildContext context) {
    Size gSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey.shade100,
      height: gSize.height,
      width: gSize.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: gSize.height * 0.03),
              Container(
                height: gSize.height * 0.034,
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
              ),
              SizedBox(height: gSize.height * 0.008),
              const Grid(),
              // const MyGridContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);
  List<Widget> get shirts {
    return [
      const MyGridContainer(
        imagePath: "assets/images/s6.jpg",
        shirtName: "Essentials Men's short-\nsleeve CrewNeck T-shirt",
        price: "\$18.00",
      ),
      const MyGridContainer(
        imagePath: "assets/images/s2.jpg",
        shirtName: "Essentials Men's short-\nsleeve CrewNeck T-shirt",
        price: "\$12.00",
      ),
      const MyGridContainer(
        imagePath: "assets/images/s5.jpg",
        shirtName: "Essentials Men's short-\nsleeve CrewNeck T-shirt",
        price: "\$10.00",
      ),
      const MyGridContainer(
        imagePath: "assets/images/s4.jpg",
        shirtName: "Essentials Men's short-\nsleeve CrewNeck T-shirt",
        price: "\$20.00",
      ),
      const MyGridContainer(
          imagePath: "assets/images/s3.jpg",
          shirtName: "Essentials Men's short-\nsleeve CrewNeck T-shirt",
          price: "\$15.00"),
      const MyGridContainer(
          imagePath: "assets/images/s7.jpg",
          shirtName: "Essentials Men's short-\nsleeve CrewNeck T-shirt",
          price: "\$11.00"),
      const MyGridContainer(
          imagePath: "assets/images/s1.jpg",
          shirtName: "Essentials Men's short-\nsleeve CrewNeck T-shirt",
          price: "\$12.00"),
      const MyGridContainer(
          imagePath: "assets/images/s8.jpg",
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
    Size gSize = MediaQuery.of(context).size;
    return GridView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: widget.shirts.length,
        itemBuilder: (BuildContext context, int index) {
          final shirt = widget.shirts[index];
          return shirt;
        });
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
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyClotheDisplayScreen(
                    imagePath: widget.imagePath,
                    price: widget.price,
                  )),
        );
      },
      child: Container(
        height: gSize.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: gSize.height * 3.0,
                // height: gSize.height,
                width: gSize.width * 0.45,
                child: Column(
                  children: [
                    Card(
                      semanticContainer: true,
                      // clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0)),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            widget.imagePath!,
                            height: gSize.height * 0.2,
                            width: gSize.width * 0.8,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            width: 35,
                            height: 35,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  print("hello");
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
                        color: Colors.grey.shade100,
                        elevation: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shirt",
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                      color: gTextColor,
                                    )),
                            SizedBox(height: gSize.height * 0.01),
                            Text(widget.shirtName!,
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
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
                                            .copyWith(
                                                color: gTextColor,
                                                fontSize: 12)),
                                  ],
                                ),
                                Text(widget.price!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                            color: gPrimaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16))
                              ],
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
