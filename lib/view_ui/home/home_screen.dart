import 'package:ecommerce_app/utils/app_color.dart';
import 'package:ecommerce_app/view_ui/home/tabs/fav_tab/fav_tab.dart';
import 'package:ecommerce_app/view_ui/home/tabs/home_tab/home_tab.dart';
import 'package:ecommerce_app/view_ui/home/tabs/prodects_tab/prodect_tab.dart';
import 'package:ecommerce_app/view_ui/home/tabs/profile/profile_tab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widget/text_field_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [HomeTab(), ProductsTab(), FavTab(), ProfileTab()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/logobuybz.png',
                  width: size.width * 0.16,
                  height: size.height * 0.07,
                  fit: BoxFit.contain,
                  color: AppColor.mainColor,
                ),

                Expanded(
                  child: TextFieldWidget(
                    icon: Icon(Icons.search_rounded, color: AppColor.mainColor),
                    title: 'What do you search for?',
                  ),
                ),

                Icon(Icons.shopping_cart, color: AppColor.mainColor, size: 30),
              ],
            ),
          ),

          Expanded(child: tabs[selectedIndex]),
        ],
      ),

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColor.mainColor,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            _bottomNavigationBarItem(
              iconName: Icon(FontAwesomeIcons.house),
              label: '',
              index: 0,
            ),
            _bottomNavigationBarItem(
              iconName: Icon(FontAwesomeIcons.box),
              label: '',
              index: 1,
            ),
            _bottomNavigationBarItem(
              iconName: Icon(FontAwesomeIcons.solidHeart),
              label: '',
              index: 2,
            ),
            _bottomNavigationBarItem(
              iconName: Icon(FontAwesomeIcons.userLarge),
              label: '',
              index: 3,
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem({
    required Widget iconName,
    required String label,
    required int index,
  }) {
    final bool isSelected = selectedIndex == index;
    var size = MediaQuery.of(context).size;

    return BottomNavigationBarItem(
      icon: Container(
        width: size.width * .12,
        height: size.height * .06,
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.all(6),
        child: IconTheme(
          data: IconThemeData(
            color: isSelected ? AppColor.mainColor : Colors.white,
            size: isSelected ? 25 : 22,
          ),
          child: iconName,
        ),
      ),
      label: label,
    );
  }
}
