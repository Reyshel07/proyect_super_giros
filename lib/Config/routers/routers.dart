import 'package:go_router/go_router.dart';
import 'package:proyect_super_giros/presentation/screens/allTurns/all_turns.dart';
import 'package:proyect_super_giros/presentation/screens/butoon_options/options.dart';
import 'package:proyect_super_giros/presentation/screens/login/login.dart';
import 'package:proyect_super_giros/presentation/screens/received/received.dart';
import 'package:proyect_super_giros/presentation/screens/send/send.dart';
import 'package:proyect_super_giros/presentation/screens/sent/sent.dart';

final appRouter = GoRouter(
  initialLocation: LoginScreen.path,
  

  routes: [
    GoRoute(
      path: LoginScreen.path,
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen()
    ),
    GoRoute(
      path: ButoonOptionsScreen.path,
      name: ButoonOptionsScreen.name,
      builder: (context, state) =>  ButoonOptionsScreen(),
    ),
    GoRoute(
      path: SendScreen.path,
      name: SendScreen.name,
      builder: (context, state) =>  SendScreen(),
    ),
    GoRoute(
      path: SentScreen.path,
      name: SentScreen.name,
      builder: (context, state) => SentScreen(),
    ),
    GoRoute(
      path: ReceivedScreen.path,
      name: ReceivedScreen.name,
      builder: (context, state) => ReceivedScreen(),
    ),
    GoRoute(
      path: AllTurnsScreen.path,
      name: AllTurnsScreen.name,
      builder: (context, state) => AllTurnsScreen(),
    )
  ]
);
