import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/app_colors.dart';
import 'models/product_model.dart';
import 'widgets/product_card.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nectar - Online Groceries',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      home: const GroceryHomeScreen(),
    );
  }
}

class GroceryHomeScreen extends StatelessWidget {
  const GroceryHomeScreen({super.key});

  static const List<Product> exclusiveOffers = [
    Product(
      id: '1',
      name: 'Organic Bananas',
      description: '7pcs, Priceg',
      price: 4.99,
      imageUrl: 'assets/images/banana.png',
    ),
    Product(
      id: '2',
      name: 'Red Apple',
      description: '1kg, Priceg',
      price: 4.99,
      imageUrl: 'assets/images/apple.png',
    ),
  ];

  static const List<Product> bestSellers = [
    Product(
      id: '3',
      name: 'Red Pepper',
      description: '1kg, Priceg',
      price: 4.99,
      imageUrl: 'assets/images/pepper.png',
    ),
    Product(
      id: '4',
      name: 'Ginger',
      description: '250g, Priceg',
      price: 4.99,
      imageUrl: 'assets/images/ginger.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Top Bar: Centered Carrot Icon
              const Center(child: CarrotIcon(size: 32)),
              const SizedBox(height: 6),

              // 2. Location Indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Color(0xFF4C4F4D),
                    size: 20,
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Dhaka, Banassre',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF4C4F4D),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),

              // 3. Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 52,
                  decoration: BoxDecoration(
                    color: AppColors.inputBackground,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: AppColors.textDark, size: 22),
                      SizedBox(width: 10),
                      Text(
                        'Search Store',
                        style: TextStyle(
                          color: AppColors.textGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18),

              // 4. Fresh Vegetables Banner
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 116,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: const LinearGradient(
                      colors: [Color(0xFFF4FAF5), Color(0xFFE8F6EE)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    border: Border.all(
                      color: AppColors.primary.withValues(alpha: 0.15),
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 58,
                            height: 58,
                            decoration: BoxDecoration(
                              color: AppColors.primaryLight,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.eco_rounded,
                              color: AppColors.primary,
                              size: 34,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Fresh Vegetables',
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.textDark,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Get Up To 40% OFF',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Carousel Indicator Dots
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 16,
                              height: 5,
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                color: Color(0xFFD3D3D3),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                color: Color(0xFFD3D3D3),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // 5. Exclusive Offer Section
              _buildSectionHeader(title: 'Exclusive Offer'),
              const SizedBox(height: 14),
              SizedBox(
                height: 248,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: exclusiveOffers.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 14),
                  itemBuilder: (context, index) {
                    final product = exclusiveOffers[index];
                    return ProductCard(product: product);
                  },
                ),
              ),
              const SizedBox(height: 26),

              // 6. Best Selling Section
              _buildSectionHeader(title: 'Best Selling'),
              const SizedBox(height: 14),
              SizedBox(
                height: 248,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: bestSellers.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 14),
                  itemBuilder: (context, index) {
                    final product = bestSellers[index];
                    return ProductCard(product: product);
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 15,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            currentIndex: 0,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.textDark,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.w600),
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.storefront_outlined),
                activeIcon: Icon(Icons.storefront),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.manage_search_outlined),
                activeIcon: Icon(Icons.manage_search),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                activeIcon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_rounded),
                activeIcon: Icon(Icons.favorite_rounded),
                label: 'Favourite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded),
                activeIcon: Icon(Icons.person_rounded),
                label: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader({required String title}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColors.textDark,
              letterSpacing: 0.1,
            ),
          ),
          const Text(
            'See all',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}

/// Nectar-styled custom painted carrot icon
class CarrotIcon extends StatelessWidget {
  final double size;
  const CarrotIcon({super.key, this.size = 30});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: _CarrotPainter(),
    );
  }
}

class _CarrotPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;

    // Green leaves
    final leafPaint = Paint()
      ..color = const Color(0xFF53B175)
      ..style = PaintingStyle.fill;

    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(w * 0.58, h * 0.16),
        width: w * 0.16,
        height: h * 0.28,
      ),
      leafPaint,
    );

    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(w * 0.70, h * 0.22),
        width: w * 0.14,
        height: h * 0.24,
      ),
      leafPaint,
    );

    // Orange carrot body
    final carrotPaint = Paint()
      ..color = const Color(0xFFF3603F)
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(w * 0.38, h * 0.26)
      ..quadraticBezierTo(w * 0.66, h * 0.22, w * 0.62, h * 0.44)
      ..quadraticBezierTo(w * 0.48, h * 0.72, w * 0.32, h * 0.88)
      ..quadraticBezierTo(w * 0.28, h * 0.92, w * 0.26, h * 0.88)
      ..quadraticBezierTo(w * 0.30, h * 0.62, w * 0.38, h * 0.26)
      ..close();

    canvas.drawPath(path, carrotPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
