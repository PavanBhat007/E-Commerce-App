import "package:e_commerce_app/components/drawer.dart";
import "package:e_commerce_app/components/product_tile.dart";
import "package:e_commerce_app/models/shop.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // access products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Shop Page"),
        actions: [
          // cart button
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart_page'),
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          const SizedBox(height: 25),

          // SHOP SUBTITLE
          Center(
            child: Text(
              "Pick from a selected list of premium products",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),

          // PRODUCT LIST
          SizedBox(
            height: 550,
            child: ListView.builder(
              itemCount: products.length,
              padding: const EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // get individual products
                final product = products[index];

                // return as product tile
                return ProductTile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
