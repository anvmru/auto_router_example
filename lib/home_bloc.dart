import 'package:auto_route/auto_route.dart';
import 'package:auto_router_example/navigation.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum EnumHomeScreens {
  Page3,
  Page4
}
//-----------------------------------------------
abstract class HomeBlocState {}

class IniHomeBlocState extends HomeBlocState{
  final BuildContext context;
  IniHomeBlocState(this.context);
}

class GotoBackState extends HomeBlocState{}

class GotoScreenState extends HomeBlocState {
  final EnumHomeScreens screen;
  GotoScreenState(this.screen);
}
class LogoutState extends HomeBlocState{}

//-----------------------------------------------

abstract class HomeBlocEvent {}

class GotoScreenEvent extends HomeBlocEvent {
  final EnumHomeScreens screen;
  GotoScreenEvent(this.screen);
}
class GotoBackEvent extends HomeBlocEvent {}
class LogoutEvent extends HomeBlocEvent {}
//-----------------------------------------------

class HomeBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  late BuildContext _context;
  HomeBloc(HomeBlocState initialState) : super(initialState) {
    if(initialState is IniHomeBlocState) {
      _context = initialState.context;
    }
    add(GotoScreenEvent(EnumHomeScreens.Page3));
  }

  @override
  Stream<HomeBlocState> mapEventToState(HomeBlocEvent event) async* {
    print("* HomeBloc.mapEventToState.event:${event.runtimeType}");
    StackRouter? router = AutoRouter.innerRouterOf(_context, HomeRoute.name);
    print("* HomeBloc.isNull(router):${(router == null)}");

    if (event is GotoScreenEvent) {
      print("* AuthBloc.screen:${event.screen.toString()}");
      if (event.screen == EnumHomeScreens.Page3) {
        router?.replace(Route3());
      } else if (event.screen == EnumHomeScreens.Page4) {
        router?.push(Route4());
      } else {
        print("* HomeBloc.ScreenError:${event.screen.toString()}");
      }
    } else if (event is GotoBackEvent) {
      router?.pop();
    } else if (event is LogoutEvent) {
      router?.popUntilRoot();
      router?.replace(AuthRoute());
    }
  }

}
