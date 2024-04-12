import "package:e_commerce_app/components/list_tile.dart";
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            // DRAWER HEADER / LOGO
            DrawerHeader(
              child: Center(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            // SHOP TILE
            MyListTile(
              text: "Shop",
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
            ),

            // CART TILE
            MyListTile(
              text: "Cart",
              icon: Icons.shopping_cart,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/cart_page ');
              },
            ),
          ]),

          // EXIT SHOP TILE
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
              text: "Exit",
              icon: Icons.logout,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, "/intro_page", (route) => false),
            ),
          ),
        ],
      ),
    );
  }
}
