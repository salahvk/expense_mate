part of 'expense_bloc.dart';

@freezed
class ExpenseState with _$ExpenseState {
  const factory ExpenseState({
    @Default(false) bool isLoading,
    @Default([]) List<ExpenseModel> expenses,
    String? errorMessage,
    required DateTime selectedDateTime,
    required PaymentType selectedPaymentType,
  }) = _ExpenseState;

  factory ExpenseState.initial() => ExpenseState(
      selectedDateTime: DateTime.now(), selectedPaymentType: PaymentType.cash);
}
