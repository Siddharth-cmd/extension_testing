import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Extension on the [AppBar] class to create adaptive app bar widgets.
///
/// This extension adds methods for creating platform-specific app bar widgets
/// using the [CupertinoNavigationBar] for iOS and [AppBar] for Android.
extension AppBarAdaptive on AppBar {
  /// Creates an adaptive app bar widget for iOS.
  ///
  /// The [title] parameter specifies the title of the app bar.
  /// The [actions] parameter provides a list of widgets to display as actions.
  ///
  /// Returns:
  /// A [PreferredSizeWidget] containing the adaptive app bar for iOS.
  PreferredSizeWidget onIOS({
    required String title,
    List<Widget>? actions,
  }) {
    return CupertinoNavigationBar(
      middle: Text(title),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: actions ?? [],
      ),
    );
  }

  /// Creates an adaptive app bar widget for Android.
  ///
  /// The [title] parameter specifies the title of the app bar.
  /// The [actions] parameter provides a list of widgets to display as actions.
  ///
  /// Returns:
  /// A [PreferredSizeWidget] containing the adaptive app bar for Android.
  PreferredSizeWidget onAndroid({
    required String title,
    List<Widget>? actions,
  }) {
    return AppBar(
      title: Text(title),
      actions: actions,
    );
  }
}
