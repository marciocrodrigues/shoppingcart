import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopcart/blocs/user.bloc.dart';
import 'package:shopcart/ui/android/pages/settings.page.dart';
import 'package:shopcart/ui/shared/widgets/account/authenticate-user-card.widget.dart';
import 'package:shopcart/ui/shared/widgets/account/unauthenticated-user-card.widget.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<UserBloc>(context);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          FlatButton(
            child: Icon(
              Icons.settings,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: bloc.user == null
        ? UnauthenticatedUsercard()
        : AuthenticateUserCard(),
    );
  }
}