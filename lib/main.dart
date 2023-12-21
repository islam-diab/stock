import 'package:flutter/material.dart';
import 'package:stock/core/routing/app_routes.dart';
import 'package:stock/stock.dart';

void main() {
  runApp(Stock(
    appRouter: AppRouter(),
  ));
}
