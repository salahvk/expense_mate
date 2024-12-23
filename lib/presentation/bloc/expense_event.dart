part of 'expense_bloc.dart';

// Abstract Event
abstract class ExpenseEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

// Load Expenses
class LoadExpenses extends ExpenseEvent {}

// Add Expense
class AddExpense extends ExpenseEvent {
  final ExpenseModel expense;

  AddExpense(this.expense);

  @override
  List<Object?> get props => [expense];
}

// Update Expense
class UpdateExpense extends ExpenseEvent {
  final ExpenseModel expense;

  UpdateExpense(this.expense);

  @override
  List<Object?> get props => [expense];
}

// Delete Expense
class DeleteExpense extends ExpenseEvent {
  final int id;

  DeleteExpense(this.id);

  @override
  List<Object?> get props => [id];
}
