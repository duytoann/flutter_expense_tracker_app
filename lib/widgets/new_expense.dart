import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  var _enteredTitle = '';
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  void _saveTitleInput(String inputValue) {
    _enteredTitle = inputValue;
  }

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          TextField(
            controller: _amountController,
            maxLength: 50,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text('Amount'),
              prefixText: '\$',
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  _titleController.clear();
                  _amountController.clear();
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                  print(_amountController.text);
                },
                child: const Text('Save Expense'),
              )
            ],
          )
        ],
      ),
    );
  }
}
