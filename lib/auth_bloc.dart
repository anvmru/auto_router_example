import 'package:auto_route/auto_route.dart';
import 'package:auto_router_example/navigation.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum EnumAuthScreens { Page1, Page2 }

//-----------------------------------------------
abstract class AuthBlocState {}

class IniAuthBlocState extends AuthBlocState {
  final BuildContext context;
  IniAuthBlocState(this.context);
}

//-----------------------------------------------

abstract class AuthBlocEvent {}

class GotoScreenEvent extends AuthBlocEvent {
  final EnumAuthScreens screen;
  GotoScreenEvent(this.screen);
}

class GotoBackEvent extends AuthBlocEvent {}

class LoginEvent extends AuthBlocEvent {}
//-----------------------------------------------

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  late BuildContext _context;
  AuthBloc(AuthBlocState initialState) : super(initialState) {
    if (initialState is IniAuthBlocState) {
      _context = initialState.context;
    }
  }

  @override
  Stream<AuthBlocState> mapEventToState(AuthBlocEvent event) async* {
    print("* AuthBloc.mapEventToState.event:${event.runtimeType}");
    StackRouter? router = AutoRouter.innerRouterOf(_context, AuthRoute.name);
    print("* AuthBloc.isNull(router):${(router == null)}");

    if (event is GotoScreenEvent) {
      print("* AuthBloc.screen:${event.screen.toString()}");
      if (event.screen == EnumAuthScreens.Page1) {
        router?.replace(Route1());
      } else if (event.screen == EnumAuthScreens.Page2) {
        router?.push(Route2());
      } else {
        print("* AuthBloc.ScreenError:${event.screen.toString()}");
      }
    } else if (event is GotoBackEvent) {
      router?.pop();
    } else if (event is LoginEvent) {
      router?.popUntilRoot();
      router?.replace(HomeRoute());
    }
  }
}
