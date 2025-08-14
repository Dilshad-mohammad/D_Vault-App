import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import 'shimmer.dart';

class TSearchCategoryShimmer extends StatelessWidget {
  const TSearchCategoryShimmer({
    super.key,
    this.itemCount = 6,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: itemCount,
        separatorBuilder: (_, __) => const SizedBox(width: DSizes.spaceBtwItems),
        itemBuilder: (_, __) {
          return const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Image
              DShimmerEffect(width: 55, height: 55, radius: 55),
              SizedBox(height: DSizes.spaceBtwItems / 2),

              /// Text
              DShimmerEffect(width: 55, height: 8),
            ],
          );
        },
      ),
    );
  }
}
