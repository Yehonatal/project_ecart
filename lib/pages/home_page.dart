import "package:flutter/material.dart";
import "package:project_ecart/components/bottom_nav_bar.dart";
import "package:project_ecart/pages/cart_page.dart";
import "package:project_ecart/pages/shop_page.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ));
        }),
      ),
      drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    // logo
                    DrawerHeader(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: Divider.createBorderSide(context,
                                    color: Colors.transparent, width: 2))),
                        child: Image.asset(
                          'assets/images/nike.png',
                          color: Colors.white,
                        )),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Divider(
                        color: Colors.grey[900],
                      ),
                    ),

                    // menu options
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: ListTile(
                        horizontalTitleGap: 24,
                        leading: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 28,
                        ),
                        title: Text(
                          'Home',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: ListTile(
                        horizontalTitleGap: 24,
                        leading: Icon(
                          size: 28,
                          Icons.info,
                          color: Colors.white,
                        ),
                        title: Text(
                          'About',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),

                //  Logo out
                const Padding(
                  padding: EdgeInsets.only(left: 25, bottom: 35),
                  child: ListTile(
                    horizontalTitleGap: 24,
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: Text(
                      'logout',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          )),
      body: _pages[_selectIndex],
    );
  }
}
