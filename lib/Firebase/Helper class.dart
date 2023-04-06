import 'package:firebase_auth/firebase_auth.dart';

class Authhelper {
  final FirebaseAuth auth = FirebaseAuth.instance;

  get user => auth.currentUser;

  //SIGNUP
  Future<String?> signUp({required String val, required String value}) async {
    try {
      await auth.createUserWithEmailAndPassword(email: val, password: value);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> signIn({required valid, required values}) async{
    try{
      await auth.signInWithEmailAndPassword(email: valid, password: values);
      return null;
    }on FirebaseAuthException catch(e){
      return e.message;
    }
  }

  Future<void> signOut() async {
    await auth.signOut();
    print('signout');
  }

}
