import 'package:flutter/material.dart';
import 'package:wakademo/utils/colors_chart.dart';
import 'package:wakademo/reusable_components/reusable_button.dart';
import 'package:wakademo/screens/book.dart';

class MenuAppBarr extends StatelessWidget {
  const MenuAppBarr({super.key});

  login() {
    print('login');
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorCharts.defaultColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          //spacing
          const SizedBox(
            height: 50,
          ),

          //Lead Profile and Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: ColorCharts.whiteBg,
                  backgroundImage: const AssetImage('images/profile.png'),
                  radius: 30,
                ),
                ReusableButton(
                  name: 'Login',
                  bg: ColorCharts.orange,
                  wt: 150,
                  ht: 40,
                  func: () => login(),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Text(
              'Manage My Booking',
              style: TextStyle(
                  color: ColorCharts.whiteBg, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const Book();
              }));
            },
          ),
          ListTile(
            leading: Text(
              'Settings',
              style: TextStyle(
                  color: ColorCharts.whiteBg, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              print('Settings');
            },
          ),
          ListTile(
            leading: Text(
              'Pay Small Small Calculator',
              style: TextStyle(
                  color: ColorCharts.whiteBg, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              print('Pay Small Small Calculator');
            },
          ),
          ListTile(
            leading: Text(
              'Privacy Policy',
              style: TextStyle(
                  color: ColorCharts.whiteBg, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              print('Privacy Policy');
            },
          ),
          ListTile(
            leading: Text(
              'Terms And Conditions',
              style: TextStyle(
                  color: ColorCharts.whiteBg, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              print('Terms And Conditions');
            },
          ),
          ListTile(
            leading: Text(
              'Messages',
              style: TextStyle(
                  color: ColorCharts.whiteBg, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              print('Messages');
            },
          ),
          ListTile(
            leading: Text(
              'Blog',
              style: TextStyle(
                  color: ColorCharts.whiteBg, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              print('Blog');
            },
          ),
          ListTile(
            leading: Text(
              'Refer A Customer',
              style: TextStyle(
                  color: ColorCharts.whiteBg, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              print('Refer A Customer');
            },
          ),
          ListTile(
            leading: Text(
              'Business Travel',
              style: TextStyle(
                  color: ColorCharts.whiteBg, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              print('Business Travel');
            },
          ),
          ListTile(
            leading: Text(
              'Help',
              style: TextStyle(
                  color: ColorCharts.whiteBg, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              print('Help');
            },
          ),
          ListTile(
            leading: Text(
              'FAQ',
              style: TextStyle(
                  color: ColorCharts.whiteBg, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              print('FAQ');
            },
          ),
        ],
      ),
    );
  }
}
