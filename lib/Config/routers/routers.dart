import 'package:go_router/go_router.dart';
import 'package:proyect_super_giros/presentation/screens/butoon_options/options.dart';
import 'package:proyect_super_giros/presentation/screens/login/login.dart';
import 'package:proyect_super_giros/presentation/screens/send/send.dart';

final appRouter = GoRouter(
  initialLocation: LoginScreen.paht,
  

  routes: [
    GoRoute(
      path: LoginScreen.paht,
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen()
    ),
    GoRoute(
      path: ButoonOptionsScreen.paht,
      name: ButoonOptionsScreen.name,
      builder: (context, state) => const ButoonOptionsScreen(),
    ),
    GoRoute(
      path: SendScreen.paht,
      name: SendScreen.name,
      builder: (context, state) => const  SendScreen(),
    )
  ]
);
