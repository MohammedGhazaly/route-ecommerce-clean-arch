import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/features/views/product_details/product_details_view.dart';
import 'package:route_e_commerce/features/views/root/root_view.dart';

void main() {
  runApp(const ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'E-Commerce App',
          theme: ThemeData(
            useMaterial3: true,
          ),
          initialRoute: RootView.routeName,
          routes: {
            RootView.routeName: (context) => const RootView(),
            ProductDetailsView.routeName: (context) =>
                const ProductDetailsView(),
          },
        );
      },
    );
  }
}
