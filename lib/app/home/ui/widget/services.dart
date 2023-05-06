import 'package:flutter/material.dart';

class MyServicesSlide extends StatefulWidget {
  const MyServicesSlide({Key? key}) : super(key: key);

  @override
  State<MyServicesSlide> createState() => _MyServicesSlideState();
}

class _MyServicesSlideState extends State<MyServicesSlide> {
  List<Widget> get services {
    return [
      const MyServices(
        icon: Icons.category_outlined,
        serviceName: "Category",
      ),
      const MyServices(
        icon: Icons.flight_outlined,
        serviceName: "Flight",
      ),
      const MyServices(
          icon: Icons.account_balance_wallet_outlined, serviceName: "Bill"),
      const MyServices(
        icon: Icons.language_outlined,
        serviceName: "Data Plan",
      ),
      const MyServices(
        icon: Icons.timelapse_outlined,
        serviceName: "Top Up",
      ),
      const MyServices(
        icon: Icons.shop_2_outlined,
        serviceName: "Purchases",
      ),
      const MyServices(
        icon: Icons.favorite_outline,
        serviceName: "Favorite",
      ),
      const MyServices(
        icon: Icons.shopping_cart_outlined,
        serviceName: "Offers",
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
  }

  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size gSize = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: gSize.height * 0.1,
          width: gSize.width * 0.89,
          child: ListView.builder(
            reverse: true,
            controller: controller,
            itemBuilder: (BuildContext context, int index) {
              return services[index];
            },
            itemCount: services.length,
            scrollDirection: Axis.horizontal,
            // shrinkWrap: true,
            physics: const ScrollPhysics(),
          ),
        ),
      ],
    );
  }
}

class MyServices extends StatelessWidget {
  const MyServices({Key? key, this.icon, this.serviceName}) : super(key: key);

  final IconData? icon;
  final String? serviceName;

  @override
  Widget build(BuildContext context) {
    Size gSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Container(
            height: gSize.height * 0.045,
            width: gSize.width * 0.10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey.shade100,
            ),
            child: Icon(icon),
          ),
        ),
        SizedBox(
          height: gSize.height * 0.01,
        ),
        Text(serviceName!),
      ],
    );
  }
}
