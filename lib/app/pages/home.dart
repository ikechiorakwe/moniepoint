import 'package:flutter/material.dart';
import 'package:moniepoint_take_home_assignment/app/utils/globals.dart';
import 'package:moniepoint_take_home_assignment/app/widgets/product_grid.dart';
import 'package:moniepoint_take_home_assignment/app/widgets/services.dart';
import 'package:moniepoint_take_home_assignment/app/widgets/swiper.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size gSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyCarousel(),
            SizedBox(height: gSize.height * 0.03),
            const MyServicesSlide(),
            SizedBox(height: gSize.height * 0.02),
            const MyProductGrid(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: gTextColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 30.0,
              color: gPrimaryColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard, size: 30.0, color: gTextColor),
            label: 'Voucher',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet,
                size: 30.0, color: gTextColor),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 30.0, color: gTextColor),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
