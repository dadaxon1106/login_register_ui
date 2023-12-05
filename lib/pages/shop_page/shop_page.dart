import 'package:app_development/pages/product_page/product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF636363),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 28,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 43),
              child: Text(
                "Bad Bunny x Adidas Campus",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Image.asset("assets/images/shoes.png"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 42),
              child: Text(
                "The customer is very important, the customer will be followed by the customer. Until the makeup of the life mass, the bed of the real estate of life does not invest.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFFFDF2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 30),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                      builder: (context) {
                        return const HomePage();
                      },
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  backgroundColor: const Color(0xFFFF9E58),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox.shrink(),
                    Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 28,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
