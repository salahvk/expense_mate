

enum ExpenseCategory {
  daily,
  weekly,
  monthly,
}

// Extension to convert enum values to capitalized strings
extension ExpenseCategoryExtension on ExpenseCategory {
  String get displayName {
    switch (this) {
      case ExpenseCategory.daily:
        return 'Daily';
      case ExpenseCategory.weekly:
        return 'Weekly';
      case ExpenseCategory.monthly:
        return 'Monthly';
    }
  }
}
