part of 'pages.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    if (prevPageEvent is! GoToSplashPage) {
      prevPageEvent = GoToSplashPage();
      context.watch<PageBloc>().add(GoToSplashPage());
    }

    return BlocBuilder<PageBloc, PageState>(builder: (_, pageState) {
      if (pageState is OnSplashPage) {
        return SplashPage();
      } else {
        return const HomePage();
      }
    });
  }
}
