import 'package:flutter/material.dart';

import 'product_details.dart'; // Make sure this is the correct path

void main() {
  runApp(Rice());
}

class Rice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RiceProductPage(),
    );
  }
}

class RiceProductPage extends StatelessWidget {
  final List<Map<String, String>> riceProducts = [
    {
      'name': 'Basmati Rice',
      'harvestedBy': 'Ramesh',
      'price': 'Rs.120/Kg',
      'harvestSeason': 'May to August',
      'image': 'assets/images/Basmathi_rice_var.jpg', // Replace with your asset path
    },
    {
      'name': 'Black Rice',
      'harvestedBy': 'Periyasamy',
      'price': 'Rs.150/Kg',
      'harvestSeason': 'July to October',
      'image': 'assets/images/black_rice_var.jpg', // Replace with your asset path
    },
    {
      'name': 'Ponni Rice',
      'harvestedBy': 'Rangaraj',
      'price': 'Rs.60/Kg',
      'harvestSeason': 'January to April',
      'image': 'assets/images/ponni_rice_var.jpg', // Replace with your asset path
    },
    {
      'name': 'Red Rice',
      'harvestedBy': 'Kalaiyarasan',
      'price': 'Rs.80/Kg',
      'harvestSeason': 'March to June',
      'image': 'assets/images/red_rice_var.jpg', // Replace with your asset path
    },
    {
      'name': 'Seeraga Samba Rice',
      'harvestedBy': 'Jeevanantham',
      'price': 'Rs.100/Kg',
      'harvestSeason': 'February to May',
      'image': 'assets/images/seeranga_samba_rice_var.jpg', // Replace with your asset path
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context), // Proper back navigation
        ),
        title: Text('Rice'),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: riceProducts.length,
        itemBuilder: (context, index) {
          return riceProductCard(riceProducts[index], context);
        },
      ),
    );
  }

  Widget riceProductCard(Map<String, String> product, BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                product['image']!,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product['name']!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Harvested by ${product['harvestedBy']}',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  Text(
                    product['price']!,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(height: 4),
                  Text(
                    product['harvestSeason']!,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductDetailsScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    icon: Icon(Icons.shopping_cart),
                    label: Text('Buy'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
