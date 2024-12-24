import 'package:expense_mate/core/enum/payment_type.dart';
import 'package:expense_mate/core/utilities/getters/get_texttheme.dart';
import 'package:expense_mate/data/models/expense_model.dart';
import 'package:expense_mate/presentation/screens/add_expense/widget/payment_type_selector.dart';
import 'package:expense_mate/presentation/screens/transaction_date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../bloc/expense/expense_bloc.dart';

class AddExpenseScreen extends StatefulWidget {
  final Map args;
  const AddExpenseScreen({
    super.key,
    required this.args,
  });

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  bool isEditing = false;
  late ExpenseModel expense;
  int id = DateTime.now().millisecondsSinceEpoch;
  @override
  void initState() {
    super.initState();
    if (widget.args.containsKey('expense') &&
        widget.args.containsKey('isEditing')) {
      expense = widget.args['expense'];
      isEditing = widget.args['isEditing'];
      if (isEditing) {
        _amountController.text = expense.amount.toString();
        _nameController.text = expense.name;
        id= expense.id ?? 0;
        context.read<ExpenseBloc>().add(
            ExpenseEvent.updateSelectedDate(selectedDateTime: expense.date));
        context.read<ExpenseBloc>().add(
              ExpenseEvent.updatePaymentType(
                  expense.paymentType ?? PaymentType.cash),
            );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Add Expense",
            style: getTextTheme(context).headlineMedium,
          )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              final amount = double.tryParse(_amountController.text) ?? 0;
              final name = _nameController.text;

              if (amount > 0 && name.isNotEmpty) {
                // Add expense event
                final expense = ExpenseModel(
                  id: id,
                  amount: amount,
                  name: name,
                  date: context.read<ExpenseBloc>().state.selectedDateTime,
                  paymentType:
                      context.read<ExpenseBloc>().state.selectedPaymentType,
                );

                isEditing
                    ? context
                        .read<ExpenseBloc>()
                        .add(ExpenseEvent.updateExpense(expense: expense))
                    : context
                        .read<ExpenseBloc>()
                        .add(ExpenseEvent.addExpense(expense: expense));
                context.pop();
                print(expense.id);
                print(isEditing);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Fill all fields properly")),
                );
              }
            },
            child: const Text("Add Expense"),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Expense name Field
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: "Expense name"),
            ),
            const SizedBox(height: 24),
            // Amount Field
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Amount"),
            ),
            const SizedBox(height: 16),
            const Text("Payment Type"),
            const PaymentTypeSelector(),
            const Text("Date & time"),
            const ExpenseDatePickerWidget(),
            Visibility(
                visible: isEditing,
                child: DeleteButton(onPressed: () {
                  print(expense.id);
                  context.read<ExpenseBloc>().add(
                      ExpenseEvent.deleteExpense(expenseId: expense.id!));
                }))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _amountController.dispose();
    _nameController.dispose();
    super.dispose();
  }
}

class DeleteButton extends StatelessWidget {
  final VoidCallback onPressed;

  const DeleteButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.delete, color: Colors.white), // Delete icon
      label: const Text(
        'Delete', // Button text
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red, // Button color
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Border radius
        ),
        elevation: 5, // Shadow effect
      ),
    );
  }
}
