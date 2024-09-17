import 'package:flutter/material.dart';

extension SizedBoxExtensions on num {
  /// Creates a SizedBox with the given width.
  SizedBox get wBox => SizedBox(width: toDouble());

  /// Creates a SizedBox with the given height.
  SizedBox get hBox => SizedBox(height: toDouble());
}
