abstract class PhoneAuthStates{}

class PhoneAuthInitialStates extends PhoneAuthStates{}

class PhoneAuthLoadingStates extends PhoneAuthStates{}

class PhoneAuthSuccessStates extends PhoneAuthStates{}

class PhoneAuthErrorStates extends PhoneAuthStates{
  final String errMessage;

  PhoneAuthErrorStates(this.errMessage);
}