import "package:basic_ecommerce_app/models/cart.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Cart",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  final shoe = value.getUserCart()[index];
                  return ListTile(
                    title: Text(shoe.name),
                    subtitle: Text(shoe.price),
                    leading: Image.asset(shoe.imagePath),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () => value.removeFromCart(shoe),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
