import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock/core/routing/app_routes.dart';
import 'package:stock/core/routing/routing.dart';

class Stock extends StatelessWidget {
  final AppRouter appRouter;
  const Stock({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        onGenerateRoute: appRouter.genetateRoutes,
        initialRoute: Routing.onBording,
      ),
    );
  }
}
