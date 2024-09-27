import 'package:flutter/material.dart';

void main() {
  runApp(Rice());
}

class Rice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Rice"),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: ListView(
          children: [
            riceItem(
              imageUrl: 'assets/basmati_rice.jpg',
              name: 'Basmati Rice',
              price: 'Rs.120/Kg',
              harvestedBy: 'Harvested by Ramesh',
              harvestSeason: 'May to August',
            ),
            riceItem(
              imageUrl: 'assets/black_rice.jpg',
              name: 'Black Rice',
              price: 'Rs.150/Kg',
              harvestedBy: 'Harvested by Periyasamy',
              harvestSeason: 'July to October',
            ),
            riceItem(
              imageUrl: 'assets/ponni_rice.jpg',
              name: 'Ponni Rice',
              price: 'Rs.60/Kg',
              harvestedBy: 'Harvested by Rangaraj',
              harvestSeason: 'January to April',
            ),
            riceItem(
              imageUrl: 'assets/red_rice.jpg',
              name: 'Red Rice',
              price: 'Rs.80/Kg',
              harvestedBy: 'Harvested by Kalaiyarasan',
              harvestSeason: 'March to June',
            ),
            riceItem(
              imageUrl: 'assets/seeraga_samba_rice.jpg',
              name: 'Seeraga Samba Rice',
              price: 'Rs.100/Kg',
              harvestedBy: 'Harvested by Jeevanantham',
              harvestSeason: 'February to May',
            ),
          ],
        ),
      ),
    );
  }

  Widget riceItem({
    required String imageUrl,
    required String name,
    required String price,
    required String harvestedBy,
    required String harvestSeason,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(harvestedBy),
                  SizedBox(height: 4),
                  Text(
                    price,
                    style: TextStyle(color: Colors.green),
                  ),
                  SizedBox(height: 4),
                  Text(harvestSeason),
                ],
              ),
            ),
            SizedBox(width: 8.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreenAccent,
                foregroundColor: Colors.black,
              ),
              child: Text("Buy"),
            ),
          ],
        ),
      ),
    );
  }
}