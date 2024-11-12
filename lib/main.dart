import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/api/dio_consumer.dart';
import 'package:shop_app/features/login/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:shop_app/features/register/presentation/view_model/register_cubit/register_cubit.dart';
import 'package:shop_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => LoginCubit(DioConsumer(dio: Dio()))),
    BlocProvider(create: (context) => RegisterCubit(DioConsumer(dio: Dio()))),
  ], child: const ShopApp()));
  //   BlocProvider(
  //   create: (context) => LoginCubit(
  //     DioConsumer(dio: Dio()),
  //   ),
  //   child: const ShopApp(),
  // ));
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      home: const SplashView(),
    );
  }
}
