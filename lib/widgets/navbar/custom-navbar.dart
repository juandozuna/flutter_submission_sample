import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sample_screens/theme.dart';

class CustomNavbar extends StatelessWidget {

  Widget _buildMenuItem(IconData icon, String title, Function onPress, [bool isActive = false]q) {
    Color color = isActive ? Colors.black : Colors.black.withOpacity(0.4);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(icon, color: color),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: color))
        ],
      ),
    );
  }

  Widget _buildCenterItem() {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppTheme.primaryColor,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [BoxShadow(blurRadius: 15, color: AppTheme.primaryColor)]
      ),
      child: Center(child: SvgPicture.asset(AppAssets.logo, color: Colors.white)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: AppTheme.primaryColor.withOpacity(0.1)))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildMenuItem(Icons.home, 'Home', (){}, true),
          _buildMenuItem(Icons.table_chart, 'Analytics', (){}),
          _buildCenterItem(),
          _buildMenuItem(Icons.credit_card, 'Payments', (){}),
          _buildMenuItem(Icons.account_balance_wallet, 'Accounts', (){}),
        ],
      ),
    );
  }
}