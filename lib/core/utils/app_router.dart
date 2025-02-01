import 'package:go_router/go_router.dart';
import 'package:uber_clone/features/auth/presentation/views/login_view.dart';
import 'package:uber_clone/features/auth/presentation/views/otp_view.dart';

abstract class AppRouter {

  static const otp = '/OtpView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => LoginView(),
      ),
      GoRoute(
        path: otp,
        builder: (context, state) => OtpView(),
      ),
    ],
  );
}
