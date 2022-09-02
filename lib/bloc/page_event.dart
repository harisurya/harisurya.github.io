part of 'page_bloc.dart';

@immutable
abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToInitialPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToSplashPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToHomePage extends PageEvent {
  @override
  List<Object> get props => [];
}
