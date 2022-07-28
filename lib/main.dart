import 'package:employee_app/core/constants.dart';
import 'package:employee_app/presentaion/homeScreen/home_screen.dart';
import 'package:employee_app/service/service_blocs/employee/employee_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentaion/login/login_screen.dart';
import 'service/service_blocs/authentication/authentication_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:(context)=>AuthenticationBloc()
          ),
          BlocProvider(
          create:(context)=>EmployeeBloc()
          )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
            ),
            border: OutlineInputBorder(
            )
          ),
          primarySwatch: Colors.blue,
        ),
        home: const LogInScreen(),
        routes: {
          homePageRouteName:(context) => const HomeScreen(),
        },
      ),
    );
  }
}
