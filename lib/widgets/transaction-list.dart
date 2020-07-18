import 'package:flutter/material.dart';
import 'package:sample_screens/data/sample_data.dart';
import 'package:sample_screens/models/transaction.dart';
import 'package:sample_screens/theme.dart';
import 'package:sample_screens/widgets/transaction-list-tile.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions = TRANSACTIONS;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Activity', style: Theme.of(context).textTheme.headline5),
                FlatButton(
                  child: Text(
                    'See all',
                    style: Theme.of(context).textTheme.headline5.copyWith(color: AppTheme.black),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Expanded(
            child: MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: transactions.length,
                itemBuilder: (context, index) => TransactionListTile(transactions[index], index),
              ),
            ),
          )
        ],
      ),
    );
  }
}
