import 'dart:ffi';

class Transaction {
  final String firstName;
  final String lastName;
  final String date;
  final String imageUrl;
  final double amount;

  Transaction(this.firstName, this.lastName, this.date, this.imageUrl, this.amount);
}