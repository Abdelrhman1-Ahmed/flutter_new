import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import 'category_model.dart';
import 'product_model.dart';
import 'cart_item_model.dart';

abstract final class MockData {
  static const List<CategoryItem> categories = [
    CategoryItem(
      id: '1',
      name: 'Fresh Fruits\n& Vegetable',
      icon: Icons.eco_outlined,
      borderColor: AppColors.categoryFruitsBorder,
      backgroundColor: AppColors.categoryFruitsBg,
    ),
    CategoryItem(
      id: '2',
      name: 'Cooking Oil\n& Ghee',
      icon: Icons.opacity_outlined,
      borderColor: AppColors.categoryOilBorder,
      backgroundColor: AppColors.categoryOilBg,
    ),
    CategoryItem(
      id: '3',
      name: 'Meat & Fish',
      icon: Icons.set_meal_outlined,
      borderColor: AppColors.categoryMeatBorder,
      backgroundColor: AppColors.categoryMeatBg,
    ),
    CategoryItem(
      id: '4',
      name: 'Bakery & Snacks',
      icon: Icons.bakery_dining_outlined,
      borderColor: AppColors.categoryBakeryBorder,
      backgroundColor: AppColors.categoryBakeryBg,
    ),
    CategoryItem(
      id: '5',
      name: 'Dairy & Eggs',
      icon: Icons.egg_outlined,
      borderColor: AppColors.categoryDairyBorder,
      backgroundColor: AppColors.categoryDairyBg,
    ),
    CategoryItem(
      id: '6',
      name: 'Beverages',
      icon: Icons.local_drink_outlined,
      borderColor: AppColors.categoryBeveragesBorder,
      backgroundColor: AppColors.categoryBeveragesBg,
    ),
  ];

  static List<Product> products = [
    Product(
      id: 'p1',
      name: 'Organic Bananas',
      description: '7pcs, Price',
      details:
          'Organic bananas are naturally sweet, rich in potassium, and grown without artificial pesticides.',
      price: 4.99,
      imageUrl:
          'https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?w=500&auto=format&fit=crop&q=80',
      category: 'Fruits',
      isFavorite: true,
    ),
    Product(
      id: 'p2',
      name: 'Naturel Red Apple',
      description: '1kg, Price',
      details:
          'Apples are nutritious, rich in fiber and antioxidants. Part of a healthful and balanced diet.',
      price: 4.99,
      imageUrl:
          'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?w=500&auto=format&fit=crop&q=80',
      category: 'Fruits',
      isFavorite: true,
    ),
    Product(
      id: 'p3',
      name: 'Bell Pepper Red',
      description: '1kg, Price',
      details:
          'Crisp, sweet, and vibrant red bell peppers packed with vitamins A and C.',
      price: 4.99,
      imageUrl:
          'https://images.unsplash.com/photo-1563565375-f3fdfdbefa83?w=500&auto=format&fit=crop&q=80',
      category: 'Fruits',
      isFavorite: false,
    ),
    Product(
      id: 'p4',
      name: 'Ginger',
      description: '250gm, Price',
      details:
          'Fresh organic ginger root, aromatic and sharp, perfect for cooking, tea, and wellness.',
      price: 2.99,
      imageUrl:
          'https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=500&auto=format&fit=crop&q=80',
      category: 'Fruits',
      isFavorite: false,
    ),
    Product(
      id: 'p5',
      name: 'Beef Bone',
      description: '1kg, Price',
      details:
          'Fresh premium cuts of beef bone, ideal for nutrient-dense broth and hearty stews.',
      price: 4.99,
      imageUrl:
          'https://images.unsplash.com/photo-1603048588665-791ca8aea617?w=500&auto=format&fit=crop&q=80',
      category: 'Meat',
      isFavorite: false,
    ),
    Product(
      id: 'p6',
      name: 'Broiler Chicken',
      description: '1kg, Price',
      details: 'Farm-fresh tender chicken, cleaned and ready for preparation.',
      price: 4.99,
      imageUrl:
          'https://images.unsplash.com/photo-1587593810167-a84920ea0781?w=500&auto=format&fit=crop&q=80',
      category: 'Meat',
      isFavorite: false,
    ),
    Product(
      id: 'p7',
      name: 'Diet Coke',
      description: '355ml, Price',
      details:
          'Classic refreshing cola taste with zero sugar and zero calories.',
      price: 1.99,
      imageUrl:
          'https://images.unsplash.com/photo-1622483767028-3f66f32aef97?w=500&auto=format&fit=crop&q=80',
      category: 'Beverages',
      isFavorite: true,
    ),
    Product(
      id: 'p8',
      name: 'Sprite Can',
      description: '325ml, Price',
      details:
          'Crisp, clean lemon-lime flavor that delivers instant refreshment.',
      price: 1.50,
      imageUrl:
          'https://images.unsplash.com/photo-1625772299848-391b6a87d7b3?w=500&auto=format&fit=crop&q=80',
      category: 'Beverages',
      isFavorite: true,
    ),
    Product(
      id: 'p9',
      name: 'Apple & Grape Juice',
      description: '2L, Price',
      details:
          '100% pure blended fruit juice without added sugars or artificial flavors.',
      price: 15.50,
      imageUrl:
          'https://images.unsplash.com/photo-1613478223719-2ab802602423?w=500&auto=format&fit=crop&q=80',
      category: 'Beverages',
      isFavorite: true,
    ),
    Product(
      id: 'p10',
      name: 'Orange Juice',
      description: '2L, Price',
      details:
          'Freshly pressed sweet oranges, rich in vitamin C and pure taste.',
      price: 15.99,
      imageUrl:
          'https://images.unsplash.com/photo-1600271886742-f049cd451bba?w=500&auto=format&fit=crop&q=80',
      category: 'Beverages',
      isFavorite: false,
    ),
    Product(
      id: 'p11',
      name: 'Coca Cola Can',
      description: '325ml, Price',
      details: 'The original sparkling cola flavor served chilled.',
      price: 4.99,
      imageUrl:
          'https://images.unsplash.com/photo-1554866585-cd94860890b7?w=500&auto=format&fit=crop&q=80',
      category: 'Beverages',
      isFavorite: true,
    ),
    Product(
      id: 'p12',
      name: 'Pepsi Can',
      description: '330ml, Price',
      details: 'Bold, crisp, refreshing cola beverage.',
      price: 4.99,
      imageUrl:
          'https://images.unsplash.com/photo-1629203851122-3726ecdf080e?w=500&auto=format&fit=crop&q=80',
      category: 'Beverages',
      isFavorite: true,
    ),
    Product(
      id: 'p13',
      name: 'Egg Chicken Red',
      description: '4pcs, Price',
      details: 'Grade A fresh brown farm eggs, rich in natural protein.',
      price: 1.99,
      imageUrl:
          'https://images.unsplash.com/photo-1582722872445-44dc5f7e3c8f?w=500&auto=format&fit=crop&q=80',
      category: 'Dairy & Eggs',
      isFavorite: false,
    ),
    Product(
      id: 'p14',
      name: 'Egg Chicken White',
      description: '180g, Price',
      details: 'Farm-fresh white eggs carefully sorted and packaged.',
      price: 1.50,
      imageUrl:
          'https://images.unsplash.com/photo-1506976785307-8732e854ad03?w=500&auto=format&fit=crop&q=80',
      category: 'Dairy & Eggs',
      isFavorite: false,
    ),
    Product(
      id: 'p15',
      name: 'Egg Pasta',
      description: '30gm, Price',
      details:
          'Artisanal enriched egg ribbon pasta, crafted from durum wheat semolina.',
      price: 15.99,
      imageUrl:
          'https://images.unsplash.com/photo-1621996346565-e3d5d6281699?w=500&auto=format&fit=crop&q=80',
      category: 'Dairy & Eggs',
      isFavorite: false,
    ),
    Product(
      id: 'p16',
      name: 'Egg Noodles',
      description: '2L, Price',
      details: 'Traditional springy egg noodles, perfect for wok stir fries.',
      price: 15.99,
      imageUrl:
          'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=500&auto=format&fit=crop&q=80',
      category: 'Dairy & Eggs',
      isFavorite: false,
    ),
    Product(
      id: 'p17',
      name: 'Mayonnaise Eggless',
      description: '325ml, Price',
      details: 'Rich, creamy eggless mayonnaise spread for sandwiches and dips.',
      price: 4.99,
      imageUrl:
          'https://images.unsplash.com/photo-1574894709920-11b28e7367e3?w=500&auto=format&fit=crop&q=80',
      category: 'Dairy & Eggs',
      isFavorite: false,
    ),
  ];

  static List<CartItem> cartItems = [
    CartItem(product: products[2], quantity: 1),
    CartItem(product: products[12], quantity: 1),
    CartItem(product: products[0], quantity: 1),
    CartItem(product: products[3], quantity: 1),
  ];

  static List<Product> get favoriteProducts =>
      products.where((p) => p.isFavorite).toList();

  static List<Product> get exclusiveOffers => [
        products[0],
        products[1],
        products[2],
      ];

  static List<Product> get bestSelling => [
        products[2],
        products[3],
        products[0],
      ];

  static List<Product> get groceries => [
        products[4],
        products[5],
      ];

  static List<Product> get beverages =>
      products.where((p) => p.category == 'Beverages').toList();
}
