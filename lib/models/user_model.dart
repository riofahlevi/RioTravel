import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String hobby;
  final String name;
  final int balance;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    this.hobby = '',
    this.balance = 0,
  });
  @override
  // TODO: implement props
  List<Object?> get props => [id,email,hobby,name,balance];
}
