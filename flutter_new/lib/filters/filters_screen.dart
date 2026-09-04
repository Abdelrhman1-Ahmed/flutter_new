import 'package:flutter/material.dart';
import '../button/app_button.dart';
import '../core/app_colors.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  static const Map<String, bool> _categories = {
    'Eggs': true,
    'Noodles & Pasta': false,
    'Chips & Crisps': false,
    'Fast Food': false,
  };

  static const Map<String, bool> _brands = {
    'Individual Collection': false,
    'Cocola': true,
    'Ifad': false,
    'Kazi Farmas': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F3F2),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.close, color: AppColors.textDark),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Filters',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.textDark,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF2F3F2),
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textDark,
                ),
              ),
              const SizedBox(height: 12),
              ..._categories.keys.map(
                (category) => Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: AppColors.border,
                  ),
                  child: CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      category,
                      style: TextStyle(
                        fontSize: 16,
                        color: _categories[category]!
                            ? AppColors.primary
                            : AppColors.textDark,
                        fontWeight: _categories[category]!
                            ? FontWeight.w600
                            : FontWeight.normal,
                      ),
                    ),
                    value: _categories[category],
                    activeColor: AppColors.primary,
                    checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (val) {},
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Brand',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textDark,
                ),
              ),
              const SizedBox(height: 12),
              ..._brands.keys.map(
                (brand) => Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: AppColors.border,
                  ),
                  child: CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      brand,
                      style: TextStyle(
                        fontSize: 16,
                        color: _brands[brand]!
                            ? AppColors.primary
                            : AppColors.textDark,
                        fontWeight: _brands[brand]!
                            ? FontWeight.w600
                            : FontWeight.normal,
                      ),
                    ),
                    value: _brands[brand],
                    activeColor: AppColors.primary,
                    checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (val) {},
                  ),
                ),
              ),
              const SizedBox(height: 36),
              AppButton(
                title: 'Apply Filter',
                onPressed: () => Navigator.pop(context),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
