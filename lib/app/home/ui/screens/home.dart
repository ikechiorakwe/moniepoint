import 'package:flutter/material.dart';
import 'package:moniepoint_take_home_assignment/app/home/ui/widget/product_header.dart';
import 'package:moniepoint_take_home_assignment/app/home/ui/widget/services.dart';
import 'package:moniepoint_take_home_assignment/app/universal_widgets/search_bar.dart';
import 'package:moniepoint_take_home_assignment/app/utils/globals.dart';
import 'package:moniepoint_take_home_assignment/app/home/ui/widget/product_grid.dart';

import '../widget/carousel.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size gSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            pinned: true,
            title: const MySearchBar(),
            backgroundColor: Colors.white,
            toolbarHeight: 70,
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  const MyCarousel(),
                  SizedBox(height: gSize.height * 0.02),
                  const MyServicesSlide(),
                ],
              ),
            ),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: ProductHeader(),
            ),
          ),
          const Grid(),
        ],
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
