import 'package:flutter/material.dart';

import '../../../../../common/widgets/shimmers/boxes_shimmer.dart';
import '../../../../../common/widgets/shimmers/brands_shimmer.dart';
import '../../../../../common/widgets/shimmers/list_tile_shimmer.dart';
import '../../../../../common/widgets/shimmers/shimmer.dart';
import '../../../../../common/widgets/shimmers/vertical_product_shimmer.dart';
import '../../../../../utils/constants/sizes.dart';

class DStoreShimmerLoader extends StatelessWidget {
  const DStoreShimmerLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(DSizes.defaultSpace),
        child: Column(
          children: [
            SizedBox(height: DSizes.spaceBtwSections),
            // AppBar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DShimmerEffect(width: 100, height: 15),
                DShimmerEffect(width: 55, height: 55, radius: 55),
              ],
            ),
            SizedBox(height: DSizes.spaceBtwSections * 2),
            // Search
            DShimmerEffect(width: double.infinity, height: 55),
            SizedBox(height: DSizes.spaceBtwSections),

            // Heading
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DShimmerEffect(width: 100, height: 15),
                DShimmerEffect(width: 80, height: 12),
              ],
            ),
            SizedBox(height: DSizes.spaceBtwSections),

            // Brands
            DBrandsShimmer(),
            SizedBox(height: DSizes.spaceBtwSections * 2),

            // Categories
            Row(
              children: [
                Expanded(child: DShimmerEffect(width: 100, height: 15)),
                SizedBox(width: DSizes.spaceBtwItems),
                Expanded(child: DShimmerEffect(width: 100, height: 15)),
                SizedBox(width: DSizes.spaceBtwItems),
                Expanded(child: DShimmerEffect(width: 100, height: 15)),
                SizedBox(width: DSizes.spaceBtwItems),
                Expanded(child: DShimmerEffect(width: 100, height: 15)),
              ],
            ),
            SizedBox(height: DSizes.spaceBtwSections),

            // Category Brands
            TListTileShimmer(),
            SizedBox(height: DSizes.spaceBtwSections),
            TBoxesShimmer(),
            SizedBox(height: DSizes.spaceBtwSections),

            // Products
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DShimmerEffect(width: 100, height: 15),
                DShimmerEffect(width: 80, height: 12),
              ],
            ),
            SizedBox(height: DSizes.spaceBtwSections),

            DVerticalProductShimmer(),
            SizedBox(height: DSizes.spaceBtwSections * 3),
          ],
        ),
      ),
    );
  }
}
