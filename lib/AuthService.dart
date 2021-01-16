import 'package:firebase_auth/firebase_auth.dart';
import 'package:tmain/DataBaseManager.dart';

class AuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

// registration with email and password

  Future createNewUser(String name,String number,String email,String password,) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password,);
      FirebaseUser user = result.user;
      await user.sendEmailVerification();
      await DatabaseManager().createUserData(name,number,email,user.uid,);
      return user;
    } catch (e) {
      print(e.toString());
    }
  }

// sign with email and password

  Future loginUser(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } catch (e) {
      print(e.toString());
    }
  }

// signout

  Future signOut() async {
    try {
      return _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
