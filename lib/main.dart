import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:xo/src/home/manager/manager.dart';
import 'package:xo/src/home/views/home_view.dart';

void main() {
  runApp(const XorO());
}

class XorO extends StatelessWidget {
  const XorO({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return ChangeNotifierProvider(
            create: (context) => Manager(),
            child: MaterialApp(
              title: 'XorO',
              home: const HomeView(),
            ),
          );
        });
  }
}
