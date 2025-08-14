import 'package:flutter/material.dart';
import 'shimmer.dart';

import '../../../utils/constants/sizes.dart';

class TListTileShimmer extends StatelessWidget {
  const TListTileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            DShimmerEffect(width: 50, height: 50, radius: 50),
            SizedBox(width: DSizes.spaceBtwItems),
            Column(
              children: [
                DShimmerEffect(width: 100, height: 15),
                SizedBox(height: DSizes.spaceBtwItems / 2),
                DShimmerEffect(width: 80, height: 12),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
