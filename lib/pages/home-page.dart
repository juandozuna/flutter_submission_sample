import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sample_screens/widgets/balance-jumbotron.dart';
import 'package:sample_screens/widgets/monthly-summaries-horizontal-list.dart';
import 'package:sample_screens/widgets/navbar/custom-navbar.dart';
import 'package:sample_screens/widgets/transaction-list.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/";

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        SizedBox(height: Platform.isIOS ? 45 : 40),
        BalanceJumbotron(),
        Expanded(child: TransactionList()),
        Container(
          height: 80,
          child: MonthlySummariesHorizontalList(),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
