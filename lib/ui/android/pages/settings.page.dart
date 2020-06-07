import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopcart/blocs/theme.bloc.dart';
import 'package:shopcart/settings.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeBloc bloc = Provider.of<ThemeBloc>(context);

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Text(
            "Tema atual: ${Settings.theme}",
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Light"),
            onPressed: () {
              bloc.save("light");
              bloc.change('light');
            },
          ),
          FlatButton(
            child: Text("Dark"),
            onPressed: () {
              bloc.save("dark");
              bloc.change('dark');
            },
          ),
          FlatButton(
            child: Text("Dark Yellow"),
            onPressed: () {
              bloc.save("dark-yellow");
              bloc.change('dark-yellow');
            },
          ),
        ],
      ),
    );
  }
}