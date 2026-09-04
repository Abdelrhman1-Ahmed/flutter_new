import 'package:flutter/material.dart';
import '../card/product_card.dart';
import '../core/app_colors.dart';
import '../models/mock_data.dart';
import '../models/product_model.dart';

class SearchScreen extends StatelessWidget {
  final String initialQuery;

  const SearchScreen({
    super.key,
    this.initialQuery = 'Egg',
  });

  List<Product> _getFilteredProducts() {
    if (initialQuery.trim().isEmpty) {
      return MockData.products;
    }
    return MockData.products
        .where((p) =>
            p.name.toLowerCase().contains(initialQuery.toLowerCase()) ||
            p.category.toLowerCase().contains(initialQuery.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final filteredProducts = _getFilteredProducts();

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 52,
                      decoration: BoxDecoration(
                        color: AppColors.inputBackground,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        controller: TextEditingController(text: initialQuery),
                        decoration: const InputDecoration(
                          hintText: 'Search Store',
                          prefixIcon: Icon(Icons.search,
                              color: AppColors.textDark),
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 14),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(Icons.tune, color: AppColors.textDark),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: filteredProducts.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.search_off_rounded,
                            size: 56,
                            color: AppColors.textGrey,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'No items found for "$initialQuery"',
                            style: const TextStyle(
                              color: AppColors.textGrey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    )
                  : GridView.builder(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      itemCount: filteredProducts.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.72,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                      ),
                      itemBuilder: (context, index) {
                        return ProductCard(product: filteredProducts[index]);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
