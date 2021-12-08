import 'package:boobank/pages/home/home_page.dart';
import 'package:boobank/pages/home/http/http_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MyHomeExpenses',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(
            name: '/',
            page: () => HomePage(
                  title: 'BooBank',
                ),
            children: [
              GetPage(
                  name: '/widgets',
                  page: () => HttpPage(),
                  children: [
                    GetPage(
                        name: '/http',
                        page: () => HttpPage())])
            ])
      ],
    );
  }
}
