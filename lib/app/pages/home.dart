import 'package:flutter/material.dart';
import 'package:moniepoint_take_home_assignment/app/utils/globals.dart';
import 'package:moniepoint_take_home_assignment/app/widgets/search_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size gSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              const Text("Hello"),
              SizedBox(
                height: gSize.height * 0.6,
              ),
              const MySearchBar(),
            ],
          ),
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
