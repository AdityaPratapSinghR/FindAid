import 'package:findaid/firebase_options.dart';
import 'package:findaid/mainPage.dart';
import 'package:findaid/screens/Description_FoundedItem.dart';
import 'package:findaid/screens/guidelines.dart';
import 'package:findaid/screens/similar_items.dart';
import 'package:findaid/screens/similar_lostitem.dart';
import 'package:findaid/utils/routes.dart';
import 'package:findaid/screens/description_lostItem.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FindAid',
      initialRoute: "/",

      debugShowCheckedModeBanner: false,

      routes: {
        "/":(context)=> mainPage(),
        MyRoutes.foundPage:(context)=> description_founded(),
        MyRoutes.lostPage:(context)=> description_lost(),
        MyRoutes.guidelines:(context)=> guidelines(),
        MyRoutes.similarItems:(context)=> SimilarItemsPage(),
        MyRoutes.similarLostItems:(context)=> SimilarLostItemsPage(),
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
    );
  }
}

