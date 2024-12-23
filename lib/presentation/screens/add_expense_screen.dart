import 'package:expense_mate/core/utilities/getters/get_texttheme.dart';
import 'package:expense_mate/data/models/expense_model.dart';
import 'package:expense_mate/presentation/screens/transaction_date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/expense_bloc.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final DateTime _selectedDate = DateTime.now();

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
                  id: DateTime.now().millisecondsSinceEpoch,
                  amount: amount,
                  name: name,
                  date: _selectedDate,
                );
                context.read<ExpenseBloc>().add(AddExpense(expense));
          
                Navigator.pop(context);
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

            // Date Picker
            const Text("Date & time"),
            const ExpenseDatePickerWidget(),
            // TextButton(
            //   onPressed: () async {
            //     final DateTime? pickedDate = await showDatePicker(
            //       context: context,
            //       initialDate: _selectedDate,
            //       firstDate: DateTime(2000),
            //       lastDate: DateTime(2101),
            //     );
            //     if (pickedDate != null && pickedDate != _selectedDate) {
            //       setState(() {
            //         _selectedDate = pickedDate;
            //       });
            //     }
            //   },
            //   child: Text(
            //     "Select Date: ${_selectedDate.toLocal()}".split(' ')[0],
            //   ),
            // ),
            // const SizedBox(height: 16),

            // Add Button
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
