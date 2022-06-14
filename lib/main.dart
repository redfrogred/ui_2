import 'package:provider/provider.dart';
import './classes/_core.dart';            // loads all the "core" classes       
import './pages/_all.dart';               // loads all the pages
import './providers/Controller.dart';

void main() => runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Controller() ),
    ],
    child: const MyApp(),
  ));
 
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    Utils.log('(main.dart) Widget Lifecycle: initState');
    Utils.log(Utils.initString);
  }

  @override
  Widget build(BuildContext context) {
    Utils.log('(main.dart) Widget Lifecycle: build');

    return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF232323),
          foregroundColor: Color(0xFFffffff),
          iconTheme: IconThemeData(color: Color(0xFFffffff)),
          titleTextStyle: TextStyle(
            height: 1,
            fontSize: 18,
          ),
        ),
        // https://api.flutter.dev/flutter/material/TabBarTheme-class.html
        // https://stackoverflow.com/questions/50566868/how-to-change-background-color-of-tabbar-without-changing-the-appbar-in-flutter
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.black,
          unselectedLabelColor:Colors.black26,
          //overlayColor: Colors.pink,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xFF232323)),
              padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.fromLTRB(10,10,10,10)),
            ),
          ),
       ),
      // Screens / Routes
      initialRoute: '/StartPage', routes: {
        '/StartPage': (context) => const StartPage(),
        '/EndPage': (context) => const EndPage(),
        '/Page1': (context) => const Page1(),
        '/Page2': (context) => const Page2(),
        '/Page3': (context) => const Page3(),
        '/Page5': (context) => const Page5(),
        '/PageLatin': (context) => const Page3(),
      }
    );
  }
}