import 'package:flutter/material.dart';

void main() {
  runApp(FarmersPage());
}

class FarmersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Periyasamy'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/periyasamy.jpg'), // Add your image here
              ),
              SizedBox(height: 16.0),
              Text(
                'Sendurai, Ariyalur',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('periyasamy@gmail.com'),
              Text('1234567890'),
              SizedBox(height: 16.0),
              Text(
                'Description',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'I\'ve been growing organic fruits and vegetables for over 10 years, using eco-friendly, pesticide-free methods. My specialties include beetroot, carrot, Red rice, peas, plums and grapes.',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Message functionality
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text('Message'),
                ),
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Products',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                height: 180.0, // Increased height to prevent overflow
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Flexible(child: productCard('assets/images/beetroot.jpg', 'Beetroot', 'Rs. 35/1Kg', 'Add to Cart')),
                    Flexible(child: productCard('assets/images/red_rice_var.jpg', 'Red Rice', 'Rs. 80/1Kg', 'Buy now')),
                    Flexible(child: productCard('assets/images/carrot.jpg', 'Carrot', 'Rs. 50/1Kg', 'Add to Cart')),
                    Flexible(child: productCard('assets/images/peas.jpg', 'Peas', 'Rs. 50/1Kg', 'Add to Cart')),
                    Flexible(child: productCard('assets/images/orange.jpg', 'Orange', 'Rs. 50/1Kg', 'Add to Cart')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget productCard(String imagePath, String productName, String price, String buttonText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 120.0, // Ensure a fixed width for each product card
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Text(productName, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(price),
            SizedBox(height: 4.0),
            ElevatedButton(
              onPressed: () {
                // Add to Cart / Buy now functionality
              },
              child: Text(buttonText),
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonText == 'Buy now' ? Colors.amber : Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}