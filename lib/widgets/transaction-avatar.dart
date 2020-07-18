import 'package:flutter/material.dart';
import 'package:sample_screens/models/transaction.dart';
import 'package:sample_screens/theme.dart';

class TransactionAvatar extends StatelessWidget {
  final Transaction _transaction;
  final int _index;

  TransactionAvatar(this._transaction, this._index);

  Widget _buildGeneratedAvatar(BuildContext context) {
    final isEven = _index % 2 == 0;
    final bgColor = isEven ? AppTheme.primaryColorLight : AppTheme.secondaryColorLight;
    final textColor = isEven ? AppTheme.primaryColor : AppTheme.secondaryColor;
    final firstName = _transaction.firstName[0].toUpperCase();
    final lastName = _transaction.lastName[0].toUpperCase();
    return Container(
      color: bgColor,
      child: Center(
        child: Text(
          '$firstName$lastName',
          style: Theme.of(context).textTheme.headline6.copyWith(color: textColor),
        ),
      ),
    );
  }

  Widget _buildAvatarWithUrl() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    final hasImage = _transaction.imageUrl != null && _transaction.imageUrl.isNotEmpty;
    return ClipOval(child: hasImage ? _buildAvatarWithUrl() : _buildGeneratedAvatar(context));
  }
}
