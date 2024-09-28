import 'package:farmlink/pages/announcements.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(RetailersDashboard());
}

class RetailersDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FarmersPage(),
    );
  }
}

// Sample data for farmers, fruits, vegetables, and grains
final List<Map<String, dynamic>> farmers = [
  {
    'name': 'Ramesh',
    'image': 'assets/images/ramesh_image.jpg',
    'crops': 'Tomatoes, Bananas, Greens',
  },
  {
    'name': 'Periyasamy',
    'image': 'assets/images/periyasamy.jpg',
    'crops': 'Potato, Brinjal, Rice, Wheat',
  },
  {
    'name': 'Kalaiyerasan',
    'image': 'assets/images/kalaiyarasan.jpg',
    'crops': 'Wheat, Guava, Lady\'s Finger',
  },
  {
    'name': 'Jeevanantham',
    'image': 'assets/images/jeevanantham.jpg',
    'crops': 'Carrot, Drumstick, Apple',
  },
  {
    'name': 'Rengaraj',
    'image': 'assets/images/rengaraj.jpg',
    'crops': 'Beetroot, Basmati Rice, Corn',
  },
];

final List<Map<String, dynamic>> fruits = [
  {'name': 'Guava', 'image': 'assets/images/guava.jpg'},
  {'name': 'Banana', 'image': 'assets/images/banana.jpg'},
  {'name': 'Apple', 'image': 'assets/images/apple.jpg'},
  {'name': 'Mango', 'image': 'assets/images/mango.jpg'},
  {'name': 'Orange', 'image': 'assets/images/orange.jpg'},
  {'name': 'Grapes', 'image': 'assets/images/grapes.jpg'},
];

final List<Map<String, dynamic>> vegetables = [
  {'name': 'Lady\'s Finger', 'image': 'assets/images/ladysfinger.jpg'},
  {'name': 'Brinjal', 'image': 'assets/images/brinjal.jpg'},
  {'name': 'Carrot', 'image': 'assets/images/carrot.jpg'},
  {'name': 'Beetroot', 'image': 'assets/images/beetroot.jpg'},
  {'name': 'Drum Stick', 'image': 'assets/images/drumstick.jpg'},
  {'name': 'Potato', 'image': 'assets/images/potato.jpg'},
  {'name': 'Bitter gourd', 'image': 'assets/images/bittergourd.jpg'},
];

final List<Map<String, dynamic>> grains = [
  {'name': 'Rice', 'image': 'assets/images/rice.jpg'},
  {'name': 'Wheat', 'image': 'assets/images/wheat.jpg'},
  {'name': 'Corn', 'image': 'assets/images/corn.jpg'},
  {'name': 'Ragi', 'image': 'assets/images/ragi.jpg'},
  {'name': 'Peas', 'image': 'assets/images/peas.jpg'},
  {'name': 'Black Gram', 'image': 'assets/images/blackgram.jpg'},
];

class FarmersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Farmers',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.black,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Announcements()));
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search farmers, products',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Farmers in your area',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Farmers list
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: farmers.length, // Number of farmers
            itemBuilder: (context, index) {
              final farmer = farmers[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(farmer['image']), // Farmer image
                ),
                title: Text(farmer['name']),
                subtitle: Text('Crops: ${farmer['crops']}'),
                trailing: Icon(Icons.arrow_forward),
              );
            },
          ),
          // Fruits Section
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Fruits',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Fruits horizontal scroll
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: fruits.map((fruit) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8), // Rounded corners for square
                          image: DecorationImage(
                            image: AssetImage(fruit['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(fruit['name']),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          // Vegetables Section
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Vegetables',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Vegetables horizontal scroll
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: vegetables.map((vegetable) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8), // Rounded corners for square
                          image: DecorationImage(
                            image: AssetImage(vegetable['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(vegetable['name']),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          // Grains Section
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Grains',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Grains horizontal scroll
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: grains.map((grain) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8), // Rounded corners for square
                          image: DecorationImage(
                            image: AssetImage(grain['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(grain['name']),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          // Add space before the bottom navbar
          SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Logout'),
        ],
      ),
    );
  }
}
