import 'package:flutter/material.dart';
import '../button/app_button.dart';
import '../core/app_colors.dart';
import '../order_accepted/order_accepted_screen.dart';

class CheckoutSheet extends StatelessWidget {
  final double totalAmount;
  final String deliveryMethod;
  final String paymentMethod;
  final String promoCode;

  const CheckoutSheet({
    super.key,
    required this.totalAmount,
    this.deliveryMethod = 'Select Method',
    this.paymentMethod = '💳 **** 4242',
    this.promoCode = 'Pick discount',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Checkout',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textDark,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.close, color: AppColors.textDark),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Divider(color: AppColors.divider),
          _buildCheckoutItem(
            title: 'Delivery',
            trailing: deliveryMethod,
            onTap: () {},
          ),
          const Divider(color: AppColors.divider),
          _buildCheckoutItem(
            title: 'Payment',
            trailing: paymentMethod,
            onTap: () {},
          ),
          const Divider(color: AppColors.divider),
          _buildCheckoutItem(
            title: 'Promo Code',
            trailing: promoCode,
            onTap: () {},
          ),
          const Divider(color: AppColors.divider),
          _buildCheckoutItem(
            title: 'Total Cost',
            trailing: '\$${totalAmount.toStringAsFixed(2)}',
            isBold: true,
            onTap: () {},
          ),
          const Divider(color: AppColors.divider),
          const SizedBox(height: 18),
          Wrap(
            children: const [
              Text(
                'By placing an order you agree to our ',
                style: TextStyle(
                  fontSize: 13,
                  color: AppColors.textGrey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Terms And Conditions',
                style: TextStyle(
                  fontSize: 13,
                  color: AppColors.textDark,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          AppButton(
            title: 'Place Order',
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OrderAcceptedScreen(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildCheckoutItem({
    required String title,
    required String trailing,
    bool isBold = false,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.textGrey,
              ),
            ),
            Row(
              children: [
                Text(
                  trailing,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: isBold ? FontWeight.bold : FontWeight.w600,
                    color: AppColors.textDark,
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  color: AppColors.textDark,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
