import 'package:flutter/material.dart';

void main() {
  runApp(FarmersPage());
}

class FarmersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FarmerProfileScreen(),
    );
  }
}

class FarmerProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Periyasamy"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/farmer_periyasamy.jpg'),
              radius: 50,
            ),
            SizedBox(height: 16.0),
            Text(
              "Sendurai, Ariyalur",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4.0),
            Text(
              "periyasamy@gmail.com",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 4.0),
            Text("1234567890", style: TextStyle(color: Colors.grey)),
            SizedBox(height: 16.0),
            Text(
              "Description",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              "I've been growing organic fruits and vegetables for over 10 years, "
              "using eco-friendly, pesticide-free methods. My specialties include beetroot, "
              "carrot, Red rice, peas, plums and grapes.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 32.0),
              ),
              child: Text("Message"),
            ),
            SizedBox(height: 24.0),
            Text(
              "Products",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            productRow(
              'assets/beetroot.jpg',
              'Beetroot',
              'Rs.35/1Kg',
              'Add to Cart',
              'Buy now',
            ),
            productRow(
              'assets/red_rice.jpg',
              'Red Rice',
              'Rs.80/1Kg',
              'Add to Cart',
              'Buy now',
            ),
            productRow(
              'assets/carrot.jpg',
              'Carrot',
              'Rs.50/1Kg',
              'Add to Cart',
              'Buy now',
            ),
          ],
        ),
      ),
    );
  }

  Widget productRow(String imageUrl, String name, String price, String addToCartText, String buyNowText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(price, style: TextStyle(color: Colors.black87)),
            ],
          ),
          Spacer(),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                  foregroundColor: Colors.black,
                ),
                child: Text(addToCartText),
              ),
              SizedBox(height: 4),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  foregroundColor: Colors.white,
                ),
                child: Text(buyNowText),
              ),
            ],
          ),
        ],
      ),
    );
  }
}