import 'package:flutter/widgets.dart';

abstract class BaseRideBorderRadii {
  const BaseRideBorderRadii._();

  static final small = BorderRadius.circular(4.0);

  static final medium = BorderRadius.circular(12.0);

  static final large = BorderRadius.circular(16.0);

  static final extraLarge = BorderRadius.circular(20.0);

  static const topMedium = BorderRadius.only(
    topLeft: Radius.circular(8.0),
    topRight: Radius.circular(8.0),
  );

  static const topLarge = BorderRadius.only(
    topLeft: Radius.circular(16.0),
    topRight: Radius.circular(16.0),
  );
}
