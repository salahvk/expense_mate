import 'package:expense_mate/core/enum/payment_type.dart';
import 'package:expense_mate/presentation/bloc/expense_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentTypeSelector extends StatelessWidget {
  const PaymentTypeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpenseBloc, ExpenseState>(
      builder: (context, state) {
        return Row(
          children: [
            // Cash Option
            Radio<PaymentType>(
              value: PaymentType.cash,
              groupValue: state.selectedPaymentType,
              onChanged: (value) {
                if (value != null) {
                  context.read<ExpenseBloc>().add(
                    ExpenseEvent.updatePaymentType(value),
                  );
                }
              },
            ),
            const Text('Cash'),

            // Bank Option
            Radio<PaymentType>(
              value: PaymentType.bank,
              groupValue: state.selectedPaymentType,
              onChanged: (value) {
                if (value != null) {
                  context.read<ExpenseBloc>().add(
                    ExpenseEvent.updatePaymentType(value),
                  );
                }
              },
            ),
            const Text('Bank'),
          ],
        );
      },
    );
  }
}
