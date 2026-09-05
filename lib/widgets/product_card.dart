import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 250,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xffE2E2E2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              product.imageUrl,
              width: 110,
              height: 72,
            ),
          ),
          const SizedBox(height: 33),
          Text(
            product.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff181725),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            product.description,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff7C7C7C),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${product.price.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725),
                ),
              ),
              SizedBox(
                height: 30,
                width: 30,
                child: FloatingActionButton(
                  heroTag: product.id,
                  onPressed: () {},
                  backgroundColor: const Color(0xff53B175),
                  elevation: 0,
                  child: const Icon(
                    Icons.add,
                    color: CupertinoColors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
