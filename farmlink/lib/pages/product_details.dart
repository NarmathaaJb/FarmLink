import 'package:flutter/material.dart';

void main() {
  runApp(RiceProductDetailsScreen());
}

class RiceProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetailsScreen(),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/Basmathi_rice_var.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: Text(
                "Basmati Rice",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                infoCard("9.5", "Avg rating"),
                infoCard("1,234", "Total reviews"),
                infoCard("4,567", "Total orders"),
              ],
            ),
            SizedBox(height: 24.0),
            Text(
              "About the farmer",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ramesh_image.jpg'),
                  radius: 30,
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ramesh",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text("1234567890"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24.0),
            Text(
              "Rice details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            detailRow(Icons.location_on, "Location", "Thurayur, Trichy, India"),
            detailRow(Icons.verified, "Quality", "Organic, pesticide free"),
            detailRow(Icons.calendar_today, "Freshness", "Grown and milled in 2024"),
            SizedBox(height: 24.0),
            Text(
              "Price & Delivery",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            detailRow(Icons.local_shipping, "Delivery", "Free shipping over India"),
            detailRow(Icons.access_time, "Timing", "Delivered in 3-5 days"),
            detailRow(Icons.attach_money, "Price", "Rs.120 per Kg"),
            SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 32.0),
                  ),
                  child: Text("Add to Cart"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 32.0),
                  ),
                  child: Text("Buy now"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget infoCard(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(label),
      ],
    );
  }

  Widget detailRow(IconData icon, String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.black54),
          SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4.0),
              Text(description),
            ],
          ),
        ],
      ),
    );
  }
}