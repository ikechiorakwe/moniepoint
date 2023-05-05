import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:moniepoint_take_home_assignment/app/widgets/search_bar.dart';

class MyCarousel extends StatelessWidget {
  const MyCarousel({Key? key}) : super(key: key);

  List<Widget> get pages {
    return [
      const MySwiperWidget(imagePath: "assets/images/clothe_hanger.jpg"),
      const MySwiperWidget(imagePath: "assets/images/skin care.jpg")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        pageSnapping: false,
        height: 300.0,
        disableCenter: true,
        enlargeCenterPage: false,
        viewportFraction: 1.0,
      ),
      items: pages.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return i;
          },
        );
      }).toList(),
    );
  }
}

class MySwiperWidget extends StatelessWidget {
  const MySwiperWidget({Key? key, this.imagePath}) : super(key: key);

  final String? imagePath;
  @override
  Widget build(BuildContext context) {
    Size gSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: gSize.height * 0.36,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath!),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: gSize.height * 0.05,
                ),
                const MySearchBar(),
                SizedBox(
                  height: gSize.height * 0.02,
                ),
                Text(
                  '#FASHION DAY',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                SizedBox(
                  height: gSize.height * 0.001,
                ),
                Text('80% OFF',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 32)),
                SizedBox(
                  height: gSize.height * 0.01,
                ),
                Text('Discover fashion that suits to\nyour style',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.black54,
                        )),
                SizedBox(
                  height: gSize.height * 0.02,
                ),
                OutlinedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey.shade800),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    )),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Check this out",
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
        // const Positioned(child: MySearchBar())
      ],
    );
  }
}
