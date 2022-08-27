import 'package:flutter/material.dart';
import 'package:parley/src/auth/authenticator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map? googleData;
  // User? activeUser = Authenticator().getActiveUser();
  // Session? activeSession = Authenticator().getActiveSession();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments;
    if (args != null) googleData = args as Map;
    return Scaffold(
      appBar: AppBar(
        title: const Text('SupaFlutter Auth'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Karibu! You are logged In successfully',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () async {
                await Authenticator().signOutActiveUser();
                Navigator.pop(context, '/');
              },
              child: const Text(
                'Sign Out',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () async {
                final user = Authenticator().getActiveUser();
                print(user);
              },
              child: const Text(
                'check user',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}