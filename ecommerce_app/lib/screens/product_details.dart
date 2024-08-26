import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> product;

  ProductDetailsScreen(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(product['title'] ?? 'Product Details', style: TextStyle( fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Lato', ),),
        actions: [
          IconButton(
            icon: Icon(Icons.share,color: Colors.black,),
            onPressed: () {
              // Implement share functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(

        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Container(
              height: 400,
              child: Image.network(
                product['thumbnail'],
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),

            // Product Details: Title, Price, and Ratings
            Padding(
              
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product['title'] ?? 'Product Title',
                     style: TextStyle( fontWeight: FontWeight.bold,
                      fontSize: 24,
                      fontFamily: 'Lato', )
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product['brand'] ?? 'Brand Name',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                        
                      ),
                       Row(
                    children: [
                      Text(
                        "\$${product['price']}",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        
                        ),
                      ),
                    ],
                  ),

                      ],
                  ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          Icon(Icons.star, color: Colors.orange, size: 16),
                         Text('(10)',style: TextStyle(color: Colors.grey),)
                          
                        ],
                      ),
                    
                  SizedBox(height: 8),
                 
                ],
              ),
            ),

            // Product Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                product['description'] ?? 'Detailed product description goes here.',
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  fontFamily: 'Lato',
                ),
              ),
            ),

           SizedBox(height: 70),
       
           
              Container(
                padding: const EdgeInsets.all(16.0),
           
                child: ElevatedButton(
                  onPressed: () {
                    // Implement add to cart functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 230, 37, 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Center(
                    child: Text(
                      'ADD TO CART',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
        
          ],
        ),
      ),
    );
  }
}
