import 'package:expense_mate/core/enum/payment_type.dart';
import 'package:expense_mate/core/utilities/getters/get_texttheme.dart';
import 'package:expense_mate/data/models/expense_model.dart';
import 'package:expense_mate/presentation/screens/add_expense/widget/payment_type_selector.dart';
import 'package:expense_mate/presentation/screens/add_expense/widget/transaction_date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
    addOrUpdateManagement();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          "Add Expense",
          style: getTextTheme(context).headlineMedium,
        ),
        actions: [
          DeleteButton(
              isEditing: isEditing,
              onPressed: () {
                context
                    .read<ExpenseBloc>()
                    .add(ExpenseEvent.deleteExpense(expenseId: expense.id!));
                context.pop();
              })
        ],
      ),
      bottomNavigationBar: AddOrUpdateButton(
          amountController: _amountController,
          nameController: _nameController,
          id: id,
          isEditing: isEditing),
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

  void addOrUpdateManagement() {
    if (widget.args.containsKey('expense') &&
        widget.args.containsKey('isEditing')) {
      expense = widget.args['expense'];
      isEditing = widget.args['isEditing'];
      if (isEditing) {
        _amountController.text = expense.amount.toString();
        _nameController.text = expense.name;
        id = expense.id ?? 0;
        context.read<ExpenseBloc>().add(
            ExpenseEvent.updateSelectedDate(selectedDateTime: expense.date));
        context.read<ExpenseBloc>().add(
              ExpenseEvent.updatePaymentType(
                  expense.paymentType ?? PaymentType.cash),
            );
      }
    }
  }
}

class AddOrUpdateButton extends StatelessWidget {
  const AddOrUpdateButton({
    super.key,
    required TextEditingController amountController,
    required TextEditingController nameController,
    required this.id,
    required this.isEditing,
  })  : _amountController = amountController,
        _nameController = nameController;

  final TextEditingController _amountController;
  final TextEditingController _nameController;
  final int id;
  final bool isEditing;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Fill all fields properly")),
              );
            }
          },
          child: Text(isEditing ? "Update Expense" : "Add Expense"),
        ),
      ),
    );
  }
}

class DeleteButton extends StatelessWidget {
  const DeleteButton({
    super.key,
    required this.isEditing,
    required this.onPressed,
  });

  final bool isEditing;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isEditing,
      child: IconButton(onPressed: onPressed, icon: Icon(MdiIcons.delete)),
    );
  }
}
