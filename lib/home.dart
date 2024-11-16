import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:multilanguage/controller/language.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum AppLanguage { English, Urdu }

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(AppLocalizations.of(context)!.localization),
        centerTitle: true,
        actions: [
          Consumer<ChangeControlLanguage>(
            builder: (context, provider, child) {
              return PopupMenuButton<AppLanguage>(
                onSelected: (AppLanguage item) {
                  if (item == AppLanguage.English) {
                    provider.changeLanguage(const Locale('en'));
                  } else {
                    provider.changeLanguage(const Locale('ur'));
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<AppLanguage>>[
                  const PopupMenuItem(
                    value: AppLanguage.English,
                    child: Text('English'),
                  ),
                  const PopupMenuItem(
                    value: AppLanguage.Urdu,
                    child: Text('Urdu'),
                  ),
                ],
              );
            },
          )
        ],
      ),
      body: SafeArea(

        child:Column(
          children: [

            Container(
              height: 200,
              width: 200,
              child: Center(
                child: ElevatedButton(onPressed: (){}, child: Text(AppLocalizations.of(context)!.login
                )),
              ),
            )
          ],
        )
      ),
    );
  }
}

