import 'package:ecommerce_ui/screens/cart_page.dart';
import 'package:ecommerce_ui/screens/homepage.dart';
import 'package:ecommerce_ui/screens/mylist_page.dart';
import 'package:ecommerce_ui/screens/search_page.dart';
import 'package:flutter/material.dart';

class PageNavigation extends StatefulWidget {
  @override
  _PageNavigationState createState() => _PageNavigationState();
}

class _PageNavigationState extends State<PageNavigation> {

  PageController _pageController = PageController();
  List<Widget> _screens = [
    HomePage(), SearchPage(), MyListPage(), CartPage()
  ];

  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex){
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: 0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.home,
                color: _selectedIndex == 0 ? Colors.green: Colors.black,
              ),
              // ignore: deprecated_member_use
              title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.search,
                  color: _selectedIndex == 1 ? Colors.green: Colors.black
              ),
              // ignore: deprecated_member_use
              title: Text("Search")
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.list_alt,
                  color: _selectedIndex == 2 ? Colors.green: Colors.black
              ),
              // ignore: deprecated_member_use
              title: Text("My list")
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.shopping_cart,
                  color: _selectedIndex == 3 ? Colors.green: Colors.black
              ),
              // ignore: deprecated_member_use
              title: Text("Cart")
          ),
        ],
      ),
    );
  }
}
