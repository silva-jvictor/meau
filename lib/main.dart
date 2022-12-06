import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meau/pages/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Future<FirebaseApp> _firebaseApp = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meau',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
      // home: FutureBuilder(
      //   future: _firebaseApp,
      //   builder: (context, snapshot) {
      //     if (snapshot.hasError) {
      //       print('You have an error! ${snapshot.error.toString()}');
      //       return const Text('Something went wrong!');
      //     } else if (snapshot.hasData) {
      //       return const MyHomePage(title: 'Flutter Demo Home Page');
      //     } else {
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //   },
      // )
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: const Color.fromARGB(255, 136, 201, 191),
      ),
      drawer: const Drawer(),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(48, 0, 48, 32),

          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 56,
            ),
            const Text(
              'Olá',
              style: TextStyle(
                  fontSize: 72,
                  fontFamily: 'Courgette',
                  color: Color.fromARGB(255, 255, 211, 88)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 52,
            ),
            const Text(
              'Bem vindo ao Meau!\nAqui você pode adotar, doar e ajudar\ncães e gatos com facilidade.\nQual é o seu interesse?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Roboto',
                color: Color.fromARGB(255, 117, 117, 117),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            TextButton(
              onPressed: () {},
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 255, 211, 88)),
                  foregroundColor:
                      MaterialStatePropertyAll(Color.fromARGB(255, 67, 67, 67)),
                  fixedSize: MaterialStatePropertyAll(Size(232, 40)),
                  textStyle: MaterialStatePropertyAll(
                    TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                    ),
                  )),
              child: const Text('ADOTAR'),
            ),
            const SizedBox(
              height: 12,
            ),
            TextButton(
              onPressed: () {},
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 255, 211, 88)),
                  foregroundColor:
                      MaterialStatePropertyAll(Color.fromARGB(255, 67, 67, 67)),
                  fixedSize: MaterialStatePropertyAll(Size(232, 40)),
                  textStyle: MaterialStatePropertyAll(
                    TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                    ),
                  )),
              child: const Text('AJUDAR'),
            ),
            const SizedBox(
              height: 12,
            ),
            TextButton(
              onPressed: () {},
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 255, 211, 88)),
                  foregroundColor:
                      MaterialStatePropertyAll(Color.fromARGB(255, 67, 67, 67)),
                  fixedSize: MaterialStatePropertyAll(Size(232, 40)),
                  textStyle: MaterialStatePropertyAll(
                    TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                    ),
                  )),
              child: const Text('CADASTRAR ANIMAL'),
            ),
            const SizedBox(
              height: 44,
            ),
            TextButton(
              onPressed: () {},
              style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 136, 201, 191)),
                  textStyle: MaterialStatePropertyAll(
                    TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                  )),
              child: const Text('login'),
            ),
            const SizedBox(
              height: 68,
            ),
            const Image(
              image: AssetImage('assets/images/Meau_marca_2.png'),
              width: 122,
              height: 44,
            )
          ],
        ),
      ),
    );
  }
}
