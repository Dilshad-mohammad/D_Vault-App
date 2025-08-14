import 'package:cwt_ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:cwt_ecommerce_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../features/authentication/screens/onboarding/onboarding.dart';
import '../features/authentication/screens/signup/signup.dart';
import '../features/authentication/screens/signup/verify_email.dart';
import '../features/personalization/screens/address/address.dart';
import '../features/personalization/screens/profile/profile.dart';
import '../features/personalization/screens/setting/settings.dart';
import '../features/shop/screens/cart/cart.dart';
import '../features/shop/screens/checkout/checkout.dart';
import '../features/shop/screens/favourites/favourite.dart';
import '../features/shop/screens/home/home.dart';
import '../features/shop/screens/order/order.dart';
import '../features/shop/screens/product_reviews/product_reviews.dart';
import '../features/shop/screens/search/search.dart';
import '../features/shop/screens/store/store.dart';
import 'routes.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: DRoutes.home, page: () => const HomeScreen()),
    GetPage(name: DRoutes.store, page: () => const StoreScreen()),
    GetPage(name: DRoutes.favourites, page: () => const FavouriteScreen()),
    GetPage(name: DRoutes.settings, page: () => const SettingsScreen()),
    GetPage(name: DRoutes.search, page: () => SearchScreen()),
    GetPage(name: DRoutes.productReviews, page: () => const ProductReviewsScreen()),
    GetPage(name: DRoutes.order, page: () => const OrderScreen()),
    GetPage(name: DRoutes.checkout, page: () => const CheckoutScreen()),
    GetPage(name: DRoutes.cart, page: () => const CartScreen()),
    GetPage(name: DRoutes.userProfile, page: () => const ProfileScreen()),
    GetPage(name: DRoutes.userAddress, page: () => const UserAddressScreen()),
    GetPage(name: DRoutes.signup, page: () => const SignupScreen()),
    GetPage(name: DRoutes.verifyEmail, page: () => const VerifyEmailScreen()),
    GetPage(name: DRoutes.signIn, page: () => const LoginScreen()),
    GetPage(name: DRoutes.forgetPassword, page: () => const ForgetPasswordScreen()),
    GetPage(name: DRoutes.onBoarding, page: () => const OnBoardingScreen()),
    // Add more GetPage entries as needed
  ];
}
