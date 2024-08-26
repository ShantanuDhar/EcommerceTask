import 'package:ecommerce_app/screens/product_details.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final dynamic product;

  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductDetailsScreen(product),
       
        ),
      ),  
      child: Card(
        
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            children: [
              Stack(
                children: [
                  Image.network(
                    product['thumbnail'],
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      color: Colors.red,
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                      child: Text(
                        '-${product['discountPercentage']}%',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 45),
              Expanded(
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 14),
                          Icon(Icons.star, color: Colors.orange, size: 14),
                          Icon(Icons.star, color: Colors.orange, size: 14),
                          Icon(Icons.star, color: Colors.orange, size: 14),
                          Icon(Icons.star, color: Colors.orange, size: 14),
                          Text('(10)',style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    Text(
                      product['brand'] ?? '',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Text(
                      product['title'] ?? '',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          "\$${product['price'] ?? ''}",
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "\$${(product['price'] - (product['price'] * product['discountPercentage'] / 100)).toStringAsFixed(2)}",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
