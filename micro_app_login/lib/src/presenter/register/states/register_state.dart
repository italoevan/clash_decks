abstract class RegisterState {
  const RegisterState();
}

class WaitigDataRegisterState extends RegisterState {
  const WaitigDataRegisterState();
}

class LoadingDataRegisterState extends RegisterState {
  const LoadingDataRegisterState();
}

class ErrorRegisterState  extends RegisterState{
  final String? message;
  const ErrorRegisterState([this.message]);
}
