import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  final List<Map<String, String>> featuredProducts = const [
    {'title': 'Product 1', 'image': 'assets/ProductOne.jpg'},
    {'title': 'Product 2', 'image': 'assets/ProductTwo.jpg'},
    {'title': 'Product 3', 'image': 'assets/ProductThree.jpg'},
  ];

  final List<Map<String, String>> products = const [
    {'title': 'Product 1', 'image': 'assets/ProductFour.jpg'},
    {'title': 'Product 2', 'image': 'assets/ProductFive.jpg'},
    {'title': 'Product 3', 'image': 'assets/ProductOne.jpg'},
    {'title': 'Product 4', 'image': 'assets/ProductTwo.jpg'},
  ];

  final List<Map<String, String>> hotOffers = const [
    {'title': 'Offer 1', 'image': 'assets/ProductOne.jpg'},
    {'title': 'Offer 2', 'image': 'assets/ProductTwo.jpg'},
    {'title': 'Offer 3', 'image': 'assets/ProductThree.jpg'},
    {'title': 'Offer 4', 'image': 'assets/ProductFour.jpg'},
    {'title': 'Offer 5', 'image': 'assets/ProductOne.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Our Products')),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          // Featured Products PageView
          SizedBox(
            height: 200,
            child: PageView.builder(
              itemCount: featuredProducts.length,
              itemBuilder: (_, index) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  featuredProducts[index]['image']!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Grid of Products
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: products.length,
            itemBuilder: (_, index) {
              final product = products[index];
              return Card(
                elevation: 3,
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(product['image']!, fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(product['title']!),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_shopping_cart),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              '${product['title']} added to the cart',
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 20),

          // Hot Offers Section
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Hot Offers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hotOffers.length,
              itemBuilder: (_, index) {
                final offer = hotOffers[index];
                return Container(
                  width: 150,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            offer['image']!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(offer['title']!, textAlign: TextAlign.center),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
