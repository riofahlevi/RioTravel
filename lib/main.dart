// ignore_for_file: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp_bwa/cubit/auth_cubit.dart';
import 'package:travelapp_bwa/cubit/destination_cubit.dart';
import 'package:travelapp_bwa/cubit/pages_cubit.dart';
import 'package:travelapp_bwa/cubit/seat_cubit.dart';
import 'package:travelapp_bwa/cubit/transaction_cubit.dart';
import 'package:travelapp_bwa/ui/pages/bonus_pages.dart';
import 'package:travelapp_bwa/ui/pages/checkout_pages.dart';
import 'package:travelapp_bwa/ui/pages/home_page.dart';
import 'package:travelapp_bwa/ui/pages/main_page.dart';
import 'package:travelapp_bwa/ui/pages/sign_in_page.dart';
import 'package:travelapp_bwa/ui/pages/sign_up_page.dart';
import 'package:travelapp_bwa/ui/pages/splash_pages.dart';
import 'package:travelapp_bwa/ui/pages/success_checkout_pages.dart';
import 'ui/pages/get_started_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PagesCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => DestinationCubit(),
        ),
        BlocProvider(
          create: (context) => SeatCubit(),
        ),
        BlocProvider(
          create: (context) => TransactionCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: SplashPage(),
        routes: {
          '/': (context) => const SplashPage(),
          '/get-started': (context) => const GetStartedPage(),
          '/main': (context) => const MainPage(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => SignInPage(),
          '/bonus-page': (context) => const BonusPage(),
          '/success': (context) => const SuccessCheckoutPage(),
        },
      ),
    );
  }
}
