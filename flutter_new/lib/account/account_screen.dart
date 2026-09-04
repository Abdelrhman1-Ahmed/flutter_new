import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../log_in/login_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 32,
                      backgroundColor: Color(0xFFF2F3F2),
                      child: Icon(
                        Icons.person,
                        size: 34,
                        color: AppColors.textDark,
                      ),
                    ),
                    const SizedBox(width: 18),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Afsar Hossen',
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textDark,
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.edit_outlined,
                                size: 16,
                                color: AppColors.primary,
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Imshuvo97@gmail.com',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.textGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Divider(color: AppColors.divider, height: 1),
              _buildMenuItem(Icons.shopping_bag_outlined, 'Orders', () {}),
              _buildMenuItem(Icons.badge_outlined, 'My Details', () {}),
              _buildMenuItem(
                  Icons.location_on_outlined, 'Delivery Address', () {}),
              _buildMenuItem(
                  Icons.credit_card_outlined, 'Payment Methods', () {}),
              _buildMenuItem(Icons.local_offer_outlined, 'Promo Card', () {}),
              _buildMenuItem(
                  Icons.notifications_none_outlined, 'Notifications', () {}),
              _buildMenuItem(Icons.help_outline, 'Help', () {}),
              _buildMenuItem(Icons.info_outline, 'About', () {}),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F3F2),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                        (route) => false,
                      );
                    },
                    child: Row(
                      children: const [
                        SizedBox(width: 20),
                        Icon(Icons.logout, color: AppColors.primary),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Log Out',
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 44),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, VoidCallback onTap) {
    return Column(
      children: [
        ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
          leading: Icon(icon, color: AppColors.textDark, size: 24),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.textDark,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 14,
            color: AppColors.textDark,
          ),
          onTap: onTap,
        ),
        const Divider(color: AppColors.divider, height: 1),
      ],
    );
  }
}
