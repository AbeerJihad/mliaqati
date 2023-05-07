import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/ProdDetails');
      },
      child: Card(
        shadowColor: Colors.black,
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          width: 180,
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Hero(
                    tag: "id",
                    child: Image.asset(
                      "images/الأرجينين 1.png",
                      height: 120,
                    ),
                  ),
                  Positioned(
                      left: -16,
                      child: CircleAvatar(
                        radius: 15,
                        child: Icon(
                          Icons.favorite_sharp,
                          size: 15,
                        ),
                        foregroundColor: Colors.grey,
                        backgroundColor: Colors.grey.withOpacity(.4),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الارجينين',
                  ),
                  Icon(Icons.add_shopping_cart_rounded)
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$100"),
                  Row(
                    children: [
                      Text("4,8"),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
