import 'package:flutter/material.dart';

class ExpenseSummaryCard extends StatelessWidget {
  final double totalCash = 150.0;  // Example data
  final double totalBank = 200.0;  // Example data
  final double totalExpenses = 350.0;

  const ExpenseSummaryCard({super.key});  // Example data

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Expense Summary',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                const Icon(
                  Icons.trending_up,
                  color: Colors.green,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Expense breakdown section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildSummaryCard(
                  context,
                  'Cash',
                  totalCash,
                  Icons.money,
                  Colors.green.shade300,
                ),
                _buildSummaryCard(
                  context,
                  'Bank',
                  totalBank,
                  Icons.account_balance,
                  Colors.blue.shade300,
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Total expenses section
            Center(
              child: Text(
                'Total Expenses: \$${totalExpenses.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrangeAccent,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryCard(
    BuildContext context,
    String label,
    double amount,
    IconData icon,
    Color color,
  ) {
    return Card(
      color: color,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 36),
            const SizedBox(height: 8),
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              '\$${amount.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}


