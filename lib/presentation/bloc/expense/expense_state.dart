part of 'expense_bloc.dart';

@freezed
class ExpenseState with _$ExpenseState {
  const factory ExpenseState(
      {@Default(false) bool isLoading,
      @Default([]) List<ExpenseModel> expenses,
      String? errorMessage,
      required DateTime selectedDateTime,
      required PaymentType selectedPaymentType,
      required ExpenseCategory selectedExpenseCategory,
      @Default(0) double cashTotal,
      @Default(0) double bankTotal}) = _ExpenseState;

  factory ExpenseState.initial() => ExpenseState(
      selectedDateTime: DateTime.now(),
      selectedPaymentType: PaymentType.cash,
      selectedExpenseCategory: ExpenseCategory.daily);
}
