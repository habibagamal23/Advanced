import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/Routes/approuter.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(360, 690),
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}