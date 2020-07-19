import 'package:flutter/material.dart';
import 'package:sample_screens/widgets/monthly-summary-item.dart';

class MonthlySummariesHorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView( //This could be replaced with a Page Controller, though requires more code
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        MonthlyReportItem(),
        MonthlyReportItem(),
        MonthlyReportItem(),
        MonthlyReportItem(),
      ],
    ));
  }
}
