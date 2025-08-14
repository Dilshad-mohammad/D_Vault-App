import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class DSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: DSizes.appBarHeight,
    left: DSizes.defaultSpace,
    bottom: DSizes.defaultSpace,
    right: DSizes.defaultSpace,
  );
}
