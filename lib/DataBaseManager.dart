import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManager {
  final CollectionReference customer =
  Firestore.instance.collection('Users');

  Future<void> createUserData(String name,String number,String email,String uid) async {
    return await customer
        .document(uid)
        .setData({'name': name,'number':number,'email':email });
  }
}
