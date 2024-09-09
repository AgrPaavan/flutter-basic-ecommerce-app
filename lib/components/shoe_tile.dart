import "package:basic_ecommerce_app/models/shoe.dart";
import "package:flutter/material.dart";

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;

  const ShoeTile({
    super.key,
    required this.shoe,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25.0),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Shoe picture
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
            child: Image.asset(shoe.imagePath),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name
                    Text(
                      shoe.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    const SizedBox(
                      height: 5,
                    ),

                    // Price
                    Text(
                      shoe.price,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),

                // Add to Cart Button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0),
                        )),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
