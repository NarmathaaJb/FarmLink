import 'package:flutter/material.dart';

void main() {
  runApp(Announcements());
}

class Announcements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RetailersListScreen(),
    );
  }
}

class RetailersListScreen extends StatelessWidget {
  final List<Retailer> retailers = [
    Retailer(
      name: "SURIYA",
      daysAgo: "2 days ago",
      requirement: "Seeking 25 kg of Tomato by September 25th.",
      imageUrl: "assets/images/announce1.png",
    ),
    Retailer(
      name: "SNEHA",
      daysAgo: "5 days ago",
      requirement: "Need 30 kg of apples by September 20th.",
      imageUrl: "assets/images/announce2.png",
    ),
    Retailer(
      name: "VIJAY",
      daysAgo: "10 days ago",
      requirement: "In need of 20 kg of wheat by September 22nd.",
      imageUrl: "assets/images/announce3.png",
    ),
    Retailer(
      name: "RINA",
      daysAgo: "10 days ago",
      requirement: "I want of 30 kg of Rice by September 30th.",
      imageUrl: "assets/images/announce4.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retailers'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: retailers.length,
        itemBuilder: (context, index) {
          return RetailerCard(retailer: retailers[index]);
        },
      ),
    );
  }
}

class Retailer {
  final String name;
  final String daysAgo;
  final String requirement;
  final String imageUrl;

  Retailer({
    required this.name,
    required this.daysAgo,
    required this.requirement,
    required this.imageUrl,
  });
}

class RetailerCard extends StatelessWidget {
  final Retailer retailer;

  RetailerCard({required this.retailer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(retailer.imageUrl),
                radius: 30,
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      retailer.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      retailer.daysAgo,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      retailer.requirement,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Message'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200,
                      iconColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Contact'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}