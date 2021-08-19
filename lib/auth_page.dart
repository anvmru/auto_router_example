import 'package:auto_router_example/auth_bloc.dart';
import 'package:auto_router_example/navigation.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("* AuthPage.build");
    return BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(IniAuthBlocState(context)),
      child: AutoRouter(),
    );
  }
}
