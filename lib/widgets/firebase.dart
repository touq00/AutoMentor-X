import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  late String userId;
  late String userName;
  late String email;
  late String phoneNumber;

  User({
    required this.userId,
    required this.userName,
    required this.email,
    required this.phoneNumber,
  });

  factory User.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return User(
      userId: doc.id,
      userName: data['userName'] ?? '',
      email: data['email'] ?? '',
      phoneNumber: data['phoneNumber'] ?? '',
    );
  }
}
