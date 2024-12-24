import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum PaymentType {
  bank,
  cash,
}

// Extension to convert enum values to capitalized strings
extension PaymentTypeExtension on PaymentType {
  String get displayName {
    switch (this) {
      case PaymentType.bank:
        return 'Bank';
      case PaymentType.cash:
        return 'Cash';
    }
  }

  IconData get displayIcon {
    switch (this) {
      case PaymentType.bank:
        return MdiIcons.bank;
      case PaymentType.cash:
        return MdiIcons.cash;
    }
  }
}
