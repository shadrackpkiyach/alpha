// import library
import 'package:flutter/material.dart';

// class name
class MarketplacePage extends StatelessWidget {
  final List<AppItem> appsForSale = [
    AppItem(
      name: 'CoolApp',
      logo: 'assets/cool_app_logo.png',
      description: 'This is a cool app that does amazing things.',
      price: 9.99,
      programmer: 'John Doe',
      uploadDate: DateTime(2023, 1, 15),
      updateDate: DateTime(2023, 10, 1),
    ),
    AppItem(
      name: 'CoolApp',
      logo: 'assets/cool_app_logo.png',
      description: 'This is a cool app that does amazing things.',
      price: 9.99,
      programmer: 'John Doe',
      uploadDate: DateTime(2023, 1, 15),
      updateDate: DateTime(2023, 10, 1),
    ),
    AppItem(
      name: 'CoolApp',
      logo: 'assets/cool_app_logo.png',
      description: 'This is a cool app that does amazing things.',
      price: 9.99,
      programmer: 'John Doe',
      uploadDate: DateTime(2023, 1, 15),
      updateDate: DateTime(2023, 10, 1),
    ),
    // Add more AppItems as needed
  ];

  MarketplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: appsForSale.length,
        itemBuilder: (context, index) {
          try {
            final app = appsForSale[index];
            return Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(app.logo,
                      width: double.infinity, height: 40, fit: BoxFit.cover),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(app.name,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(app.description,
                        maxLines: 2, overflow: TextOverflow.ellipsis),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Price: \$${app.price.toStringAsFixed(2)}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Add to cart functionality
                        try {
                          addToCart(app);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text('${app.name} added to cart!')),
                          );
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Error adding to cart: $e')),
                          );
                        }
                      },
                      child: const Text('Add to Cart'),
                    ),
                  ),
                ],
              ),
            );
          } catch (e) {
            return Center(child: Text('Error loading app: $e'));
          }
        },
      ),
    );
  }

  void addToCart(AppItem app) {
    // Implement add to cart logic here
    // This is a placeholder for actual functionality
    print('${app.name} has been added to the cart.');
  }
}

// AppItem class
class AppItem {
  final String name;
  final String logo;
  final String description;
  final double price;
  final String programmer;
  final DateTime uploadDate;
  final DateTime updateDate;

  AppItem({
    required this.name,
    required this.logo,
    required this.description,
    required this.price,
    required this.programmer,
    required this.uploadDate,
    required this.updateDate,
  });
}

// Extension for DateTime to format dates
extension DateTimeFormatting on DateTime {
  String toShortDateString() {
    return "${this.day}/${this.month}/${this.year}";
  }
}
