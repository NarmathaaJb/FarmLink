import 'package:farmlink/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'add_product.dart';  // Import AddProductScreen

void main() {
  runApp(FarmersProfile());
}

class FarmersProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/ramesh_image.jpg'), // Replace with actual image path
            ),
            SizedBox(height: 8),
            Text(
              'Ramesh',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Thuraiyur, Trichy',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              'ramesh1987@gmail.com',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              '1234567890',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.edit, size: 16),
              label: Text('Edit Profile'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                iconColor: Colors.black,
                shadowColor: Colors.transparent,
              ),
            ),
            SizedBox(height: 16),
            Text(
              '4.0',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.green, size: 30),
                Icon(Icons.star, color: Colors.green, size: 30),
                Icon(Icons.star, color: Colors.green, size: 30),
                Icon(Icons.star, color: Colors.green, size: 30),
                Icon(Icons.star_half, color: Colors.green, size: 30),
              ],
            ),
            Text('(2k reviews)', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 16),
            _buildRatingBar(),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Previous Listings',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            _buildProductTile('Organic Corn', '30 Kg', 'Rs.30/Kg', 'assets/images/corn.jpg'),
            _buildProductTile('Organic Cucumbers', '40 Kg', 'Rs.60/Kg', 'assets/images/cucumber.jpg'),
            _buildProductTile('Organic Carrots', '50 Kg', 'Rs.55/Kg', 'assets/images/carrot.jpg'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to AddProductScreen when "Add Product" is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddProductScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Add Product',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRatingBar() {
    return Column(
      children: [
        _buildRatingRow(5, 87),
        _buildRatingRow(4, 10),
        _buildRatingRow(3, 2),
        _buildRatingRow(2, 0),
        _buildRatingRow(1, 1),
      ],
    );
  }

  Widget _buildRatingRow(int stars, int percentage) {
    return Row(
      children: [
        Text(stars.toString(), style: TextStyle(fontSize: 16)),
        SizedBox(width: 8),
        Expanded(
          child: LinearProgressIndicator(
            value: percentage / 100.0,
            backgroundColor: Colors.grey[300],
            color: Colors.green,
          ),
        ),
        SizedBox(width: 8),
        Text('$percentage%', style: TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget _buildProductTile(String title, String weight, String price, String imagePath) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Image.asset(imagePath, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(weight + '\n' + title),
        trailing: Icon(Icons.check_circle, color: Colors.green),
        isThreeLine: true,
      ),
    );
  }
}
