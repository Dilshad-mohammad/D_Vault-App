import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import 'shimmer.dart';

class TBoxesShimmer extends StatelessWidget {
  const TBoxesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: DShimmerEffect(width: 150, height: 110)),
            SizedBox(width: DSizes.spaceBtwItems),
            Expanded(child: DShimmerEffect(width: 150, height: 110)),
            SizedBox(width: DSizes.spaceBtwItems),
            Expanded(child: DShimmerEffect(width: 150, height: 110)),
          ],
        )
      ],
    );
  }
}
