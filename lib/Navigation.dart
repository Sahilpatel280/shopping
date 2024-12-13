
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:listtileviewdesign/shop/homescreen/homescreen.dart';
import 'package:listtileviewdesign/utils/constants/colors.dart';

class Navigation extends StatefulWidget {
  Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  int _selectedIndex = 0;

  static const List<Widget> _options = [

    Homescreen(),


  ];

  void _onTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: _options[_selectedIndex],


      bottomNavigationBar: CurvedNavigationBar(
          buttonBackgroundColor: TColors.primary,
          animationCurve: Curves.fastEaseInToSlowEaseOut,
          animationDuration: Duration(milliseconds: 300),
          index: _selectedIndex,
          onTap: _onTap,
          items: [
            CurvedNavigationBarItem(
             child: Icon(Icons.home),
              label: 'Home',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.favorite),
              label: "wishlist",
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.shopping_cart),
              label: "Shopping"
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.search),
              label: "Search",
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.settings),
              label: "Settings",
            ),
        ]
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      //   shape: CircleBorder(
      //       side: BorderSide(
      //         color: Colors.white,
      //       )
      //   ),
      //   child: Icon(Icons.shopping_cart),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //
      //
      //
      // bottomNavigationBar: BottomNavigationBar(
      //     selectedItemColor: Colors.deepOrange,
      //     currentIndex: _selectedIndex,
      //     type: BottomNavigationBarType.fixed,
      //     onTap: _onTap,
      //     items: <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: "Home",
      //       ),
      //
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite),
      //         label: "wishlist",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.search),
      //         label: "Search",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.settings),
      //         label: "Settings",
      //       ),
      //     ]
      //
      // ),
    );
  }
}
