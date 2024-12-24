part of 'expense_bloc.dart';



@freezed
class ExpenseEvent with _$ExpenseEvent {
  const factory ExpenseEvent.addExpense({required ExpenseModel expense}) = AddExpense;
  const factory ExpenseEvent.deleteExpense({required int expenseId}) = DeleteExpense;
  const factory ExpenseEvent.updateExpense({required ExpenseModel expense}) = UpdateExpense;
  const factory ExpenseEvent.fetchExpenses() = FetchExpenses;
  const factory ExpenseEvent.clearExpenses() = ClearExpenses;
  const factory ExpenseEvent.updateSelectedDate({required DateTime selectedDateTime}) = UpdateSelectedDate;
  const factory ExpenseEvent.updatePaymentType(PaymentType paymentType) = UpdatePaymentTypeEvent;
  const factory ExpenseEvent.updateSelectedIndex(int index) = UpdateSelectedIndex;
}
