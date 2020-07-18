import 'package:flutter/material.dart';
import 'package:sample_screens/models/transaction.dart';
import 'package:sample_screens/theme.dart';
import 'package:sample_screens/widgets/transaction-avatar.dart';

class TransactionListTile extends StatelessWidget {
  final Transaction _transaction;
  final int _index;

  TransactionListTile(this._transaction, this._index);

  @override
  Widget build(BuildContext context) {
    var amount = _transaction.amount;
    var amountStr = "£";
    var color = AppTheme.primaryColor;
    if (amount < 0) {
      amount = amount * -1;
      color = AppTheme.black;
      amountStr = "-£$amount";
    } else {
      amountStr = "+£$amount";
    }
    return ListTile(
      leading: TransactionAvatar(_transaction, _index),
      title: Text('${_transaction.firstName} ${_transaction.lastName}',
          style: Theme.of(context).textTheme.headline5.copyWith(color: AppTheme.black)),
      subtitle: Text('${_transaction.date}', style: Theme.of(context).textTheme.headline6),
      trailing: Text(amountStr, style: Theme.of(context).textTheme.headline5.copyWith(color: color)),
    );
  }
}
