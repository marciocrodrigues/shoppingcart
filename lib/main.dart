import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopcart/blocs/cart.bloc.dart';
import 'package:shopcart/blocs/home.bloc.dart';
import 'package:shopcart/blocs/theme.bloc.dart';
import 'package:shopcart/blocs/user.bloc.dart';
import 'package:shopcart/ui/android/pages/tabs.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Faz a injeção das dependencias
   return MultiProvider(
     providers: [
       // notifica quando houver mudança na classe, assim notificando a tela
       ChangeNotifierProvider<HomeBloc>.value(
         value: HomeBloc(),
       ),
        ChangeNotifierProvider<CartBloc>.value(
          value: CartBloc(),
        ),
        ChangeNotifierProvider<UserBloc>.value(
          value: UserBloc(),
        ),
        ChangeNotifierProvider<ThemeBloc>.value(
          value: ThemeBloc(),
        ),
     ],
     child: Main(),
   );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeBloc bloc = Provider.of<ThemeBloc>(context);

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: bloc.theme,
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}