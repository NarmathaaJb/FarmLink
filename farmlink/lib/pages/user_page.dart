import 'package:flutter/material.dart';

import 'login_page.dart'; // Import your login page

void main() {
  runApp(UserPage());
}

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User',
      theme: ThemeData(
        fontFamily: 'Plus Jakarta Sans', // Or use another modern font like Poppins or Roboto
      ),
      home: Scaffold(
        body: Container(
          color: const Color(0xFFFFFFFF),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  children: [
                    // Centered FarmLink title
                    Container(
                      padding: const EdgeInsets.all(16),
                      color: const Color(0xFFFFFFFF),
                      child: const Center(
                        child: Text(
                          'FarmLink',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF1C160C),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      child: Text(
                        'Cultivating connections, empowering farmers and retailers.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 170, 169, 166),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      child: Text(
                        'Sign in to access your account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1C160C),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Farmer login card with sign-in button
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              buildLoginCard(
                                imageUrl: 'assets/images/farmer_user.png',
                                label: 'Farmer Login',
                              ),
                              SizedBox(height: 10),
                              buildSignInButton('Sign in', context), // Pass context
                            ],
                          ),
                          // Retailer login card with sign-in button
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              buildLoginCard(
                                imageUrl: 'assets/images/retailer_user.png',
                                label: 'Retailer Login',
                              ),
                              SizedBox(height: 10),
                              buildSignInButton('Sign in', context), // Pass context
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  'New to FarmLink? SignUp here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFA18249),
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Container(
                height: 218,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background_image.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLoginCard({required String imageUrl, required String label}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF1C160C),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget buildSignInButton(String text, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigate to LoginPage
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF019863),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
