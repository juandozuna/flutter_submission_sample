import 'package:flutter/material.dart';
import 'package:sample_screens/theme.dart';

class BalanceJumbotron extends StatelessWidget {

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Balance', style: Theme.of(context).textTheme.headline3),
        Text('£256.12', style: Theme.of(context).textTheme.headline1),
        Text('£12.98 spent today', style: Theme.of(context).textTheme.headline4)
      ],
    );
  }

  Widget _buildButton() {
    return Container(
      width: 50,
      child: IconButton(icon: Icon(Icons.search), onPressed: () {  }, ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 15  , vertical: 15),
      decoration: BoxDecoration(
        color: AppTheme.secondaryColorLight,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(blurRadius: 3, color: Colors.black12, offset: Offset(1, 1))]
      ),
      child: Row(
        children: <Widget>[
          Expanded(child: _buildContent(context)),
          _buildButton()
        ],
      ),
    );
  }
}