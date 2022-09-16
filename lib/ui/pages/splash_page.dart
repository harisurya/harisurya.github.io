part of 'pages.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashPageState();
  }
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<Timer> loadData() async {
    return Timer(const Duration(seconds: 1), onDoneLoading);
  }

  onDoneLoading() async {
    context.read<PageBloc>().add(GoToHomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 50),
            ),
            SafeArea(
                child: Container(
              color: Colors.white,
            )),
            Container(
              margin:
                  EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(logoPath))),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
