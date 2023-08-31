import 'package:flutter/material.dart';

/// Extension on the [Column] class to easily create a scrollable ListView.
///
/// This extension provides a convenient way to create a scrollable [ListView]
/// with the specified attributes while encapsulating the [ListView] creation.
extension ColumnScrollable on Column {
  /// Creates a scrollable [ListView] widget with the given attributes.
  ///
  /// The [children] parameter specifies the list of widgets to display in the [ListView].
  /// The [controller] parameter can be used to control the scroll position.
  /// The [physics] parameter determines the scrolling behavior.
  /// The [padding] parameter specifies the padding around the [ListView].
  ///
  /// Returns:
  /// A [ListView] widget with the specified attributes.
  ListView scrollable({
    required List<Widget> children,
    ScrollController? controller,
    ScrollPhysics? physics,
    EdgeInsetsGeometry? padding,
  }) {
    return ListView(
      controller: controller,
      physics: physics,
      padding: padding,
      children: children,
    );
  }
}
