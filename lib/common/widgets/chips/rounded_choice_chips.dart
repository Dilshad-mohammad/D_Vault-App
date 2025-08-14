import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/circular_container.dart';

/// A customized choice chip that can act like a radio button.
class TChoiceChip extends StatelessWidget {
  /// Create a chip that acts like a radio button.
  ///
  /// Parameters:
  ///   - text: The label text for the chip.
  ///   - selected: Whether the chip is currently selected.
  ///   - onSelected: Callback function when the chip is selected.
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      // Use a transparent canvas color to match the existing styling.
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        // Use this function to get Colors as a Chip
        avatar: DHelperFunctions.getColor(text) != null
            ? TCircularContainer(width: 50, height: 50, backgroundColor: DHelperFunctions.getColor(text)!)
            : null,
        selected: selected,
        onSelected: onSelected,
        backgroundColor: DHelperFunctions.getColor(text),
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        shape: DHelperFunctions.getColor(text) != null ? const CircleBorder() : null,
        label: DHelperFunctions.getColor(text) == null ? Text(text) : const SizedBox(),
        padding: DHelperFunctions.getColor(text) != null ? const EdgeInsets.all(0) : null,
        labelPadding: DHelperFunctions.getColor(text) != null ? const EdgeInsets.all(0) : null,
      ),
    );
  }
}
