import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'bloc/bloc.dart';
import 'shared/shared.dart';
import 'ui/pages/pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: null,
      initialData: null,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => PageBloc()),
          BlocProvider(create: (_) => ThemeBloc()),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (_, themestate) => MaterialApp(
            theme: ThemeData(primaryColor: mainColor),
            title: "udahari.com",
            home: Wrapper(),
            debugShowCheckedModeBanner: false,
            // navigatorObservers: <NavigatorObserver>[observer],
          ),
        ),
      ),
    );
  }
}
