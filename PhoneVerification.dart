import 'package:firebase_auth/firebase_auth.dart';

class PhoneNumberVerification {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> verifyPhoneNumber(
      String phoneNumber,
      Function(AuthCredential) verificationCompleted,
      Function(String verificationId, [int? forceResendingToken]) verificationFailed,
      Function(String verificationId, [int? forceResendingToken]) codeSent,
      Function(String verificationId, String? smsCode) codeAutoRetrievalTimeout,
      Duration timeout) async {
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
      timeout: timeout,
    );
  }

  Future<UserCredential> signInWithPhoneNumber(String verificationId, String smsCode) async {
    AuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );

    return await _firebaseAuth.signInWithCredential(credential);
  }

  void signOut() {
    _firebaseAuth.signOut();
  }
}

