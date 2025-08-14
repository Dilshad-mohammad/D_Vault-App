import 'package:cwt_ecommerce_app/features/personalization/controllers/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../models/payment_method_model.dart';
import '../../screens/checkout/widgets/payment_tile.dart';

class CheckoutController extends GetxController {
  static CheckoutController get instance => Get.find();

  final settingsController = Get.put(SettingsController());
  final Rx<PaymentMethodModel> selectedPaymentMethod = PaymentMethodModel.empty().obs;

  @override
  void onInit() {
    selectedPaymentMethod.value = PaymentMethodModel(name: PaymentMethods.paypal.name, image: DImages.paypal);
    super.onInit();
  }

  Future<dynamic> selectPaymentMethod(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (_) => SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(DSizes.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DSectionHeading(title: 'Select Payment Method', showActionButton: false),
              const SizedBox(height: DSizes.spaceBtwSections),
              TPaymentTile(paymentMethod: PaymentMethodModel(name: PaymentMethods.paypal.name, image: DImages.paypal)),
              const SizedBox(height: DSizes.spaceBtwItems / 2),
              TPaymentTile(paymentMethod: PaymentMethodModel(name: 'Google Pay', image: DImages.googlePay)),
              const SizedBox(height: DSizes.spaceBtwItems / 2),
              TPaymentTile(paymentMethod: PaymentMethodModel(name: 'Apple Pay', image: DImages.applePay)),
              const SizedBox(height: DSizes.spaceBtwItems / 2),
              TPaymentTile(paymentMethod: PaymentMethodModel(name: 'VISA', image: DImages.visa)),
              const SizedBox(height: DSizes.spaceBtwItems / 2),
              TPaymentTile(paymentMethod: PaymentMethodModel(name: 'Master Card', image: DImages.masterCard)),
              const SizedBox(height: DSizes.spaceBtwItems / 2),
              TPaymentTile(paymentMethod: PaymentMethodModel(name: 'Paytm', image: DImages.paytm)),
              const SizedBox(height: DSizes.spaceBtwItems / 2),
              TPaymentTile(paymentMethod: PaymentMethodModel(name: 'Paystack', image: DImages.paystack)),
              const SizedBox(height: DSizes.spaceBtwItems / 2),
              TPaymentTile(paymentMethod: PaymentMethodModel(name: 'Credit Card', image: DImages.creditCard)),
              const SizedBox(height: DSizes.spaceBtwItems / 2),
              const SizedBox(height: DSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }

  bool isShippingFree(double subTotal) {
    if (settingsController.settings.value.freeShippingThreshold != null && settingsController.settings.value.freeShippingThreshold! > 0.0) {
      if (subTotal > settingsController.settings.value.freeShippingThreshold!) {
        return true;
      }
    }
    return false;
  }

  double getShippingCost(double subTotal) {
    return isShippingFree(subTotal) ? 0 : settingsController.settings.value.shippingCost;
  }

  double getTaxAmount(double subTotal) {
    return settingsController.settings.value.taxRate * subTotal;
  }

  double getTotal(double subTotal) {
    double taxAmount = subTotal * settingsController.settings.value.taxRate;
    double totalPrice = subTotal + taxAmount + (isShippingFree(subTotal) ? 0 : settingsController.settings.value.shippingCost);
    return double.tryParse(totalPrice.toStringAsFixed(2)) ?? 0.0;
  }
}
