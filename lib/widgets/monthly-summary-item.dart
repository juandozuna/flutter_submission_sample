import 'package:flutter/material.dart';
import 'package:sample_screens/theme.dart';

class MonthlyReportItem extends StatelessWidget {

  Widget _getColorBar(Color color) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10)
      ),
      width: 10,
      height: 30,
    );
  }

  Widget _getMoneyAmount(Color color, double amount, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 14),
      child: Text('£$amount', style: Theme.of(context).textTheme.headline6.copyWith(color: color)),
    );
  }

  Widget _getInfoRow(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[ 
          _getColorBar(AppTheme.primaryColor),
          _getMoneyAmount(AppTheme.primaryColor, 18.78, context),
          _getColorBar(AppTheme.dangerColor),
          _getMoneyAmount(AppTheme.dangerColor, 2.12, context)
        ],
      ),
    );
  }

  Widget _getMonthText(BuildContext context) {
    return Text(
      'July',
      style: Theme.of(context).textTheme.headline6.copyWith(color: AppTheme.black),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width - 20,
      padding: EdgeInsets.only(bottom: 20),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppTheme.secondaryColorLight
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _getInfoRow(context),
            _getMonthText(context)
          ],
        ),
      ),
    );
  }
}