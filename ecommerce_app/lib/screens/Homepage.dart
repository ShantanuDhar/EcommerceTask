
import 'package:ecommerce_app/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
   
    int currentPage=1;
   
    List<Widget> pages=[
      Scaffold(
        body: Center(
          child: Text('Home Page'),
        ),
      ),
ProductListScreen(),

Scaffold(
        body: Center(
          child: Text('Shopping Cart'),
        ),
      ),
Scaffold(
        body: Center(
          child: Text('Favourites'),
        ),
      ),
Scaffold(
        body: Center(
          child: Text('Profile Page'),
        ),
      ),
    ];

  @override
  Widget build(BuildContext context) {
    
    return   Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 223, 217, 217),
        selectedFontSize: 10,
        unselectedFontSize: 10,

        iconSize: 35,
          selectedItemColor: Colors.red,
        onTap: (value){
          setState(() {
            currentPage=value;
          });
        },
        currentIndex: currentPage,

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Container(child: Icon(Icons.home)), label: 'Home'),
          const BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Shop'),
          const BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Bag'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourites'),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      );

  
  }
}