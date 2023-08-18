import 'package:equatable/equatable.dart';


class User extends Equatable{
  const User({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.avatar
});
  final int id;
  final DateTime createdAt;
  final String name;
  final String avatar;

  @override
  bool operator == (other) {
    return identical(this, other) ||
    other is User && other.runtimeType == runtimeType && other.id == id && other.name == name;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id];

}