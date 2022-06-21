import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/foods_overview_screen.dart';
import './screens/food_detail_screen.dart';
import './providers/foods.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>Foods(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Food Order',
          theme: ThemeData(
            primarySwatch: Colors.lightGreen,
            accentColor: Colors.lightGreenAccent,
            fontFamily: 'Lato',
          ),
          home: FoodsOverviewScreen(),
          routes: {
            FoodDetailScreen.routeName: (ctx) => FoodDetailScreen(),
          }
      ),
    );

  }
}