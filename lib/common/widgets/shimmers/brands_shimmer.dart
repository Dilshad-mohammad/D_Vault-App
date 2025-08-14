import 'package:flutter/material.dart';
import '../layouts/grid_layout.dart';
import 'shimmer.dart';


class DBrandsShimmer extends StatelessWidget {
  const DBrandsShimmer({super.key, this.itemCount = 4});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return TGridLayout(
      mainAxisExtent: 80,
      itemCount: itemCount,
      itemBuilder: (_, __) => const DShimmerEffect(width: 300, height: 80),
    );
  }
}
