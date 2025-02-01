import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uber_clone/features/auth/presentation/controller/phone_auth_cubit/phone_auth_states.dart';

class PhoneAuthCubit extends Cubit<PhoneAuthStates> {
  PhoneAuthCubit() : super(PhoneAuthInitialStates());
  late String verificationId;
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> phoneLogin(String phoneNumber) async {
    emit(PhoneAuthLoadingStates());
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        emit(PhoneAuthSuccessStates());
        await auth.signInWithCredential(credential);
        print('verification completed');
      },
      verificationFailed: (FirebaseAuthException exception) {
        if (exception.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        } else if (exception.code == 'short-phone-number') {
          print('The provided phone number is too short');
        } else {
          print('verification error: ${exception.toString()}');
          emit(PhoneAuthErrorStates(exception.toString()));
        }
      },
      codeSent: (String verificationId, int? resendToken) async {
        this.verificationId = verificationId;
        emit(PhoneAuthSuccessStates());
        print('code sent');
      },
      timeout: const Duration(seconds: 60),
      codeAutoRetrievalTimeout: (String verificationId) {
        print('codeAutoRetrievalTimeout');
      },
    );
  }
}
