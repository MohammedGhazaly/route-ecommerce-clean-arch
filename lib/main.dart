import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/features/auth/views/login/login_view.dart';
import 'package:route_e_commerce/features/auth/views/register/register_view.dart';
import 'package:route_e_commerce/features/product_list/view/product_list_view.dart';
import 'package:route_e_commerce/features/product_details/product_details_view.dart';
import 'package:route_e_commerce/features/root/view/root_view.dart';
import 'package:route_e_commerce/utils/my_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();

  runApp(const ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 930),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'E-Commerce App',
          theme: MyTheme.mainTheme,
          initialRoute: RootView.routeName,
          routes: {
            RootView.routeName: (context) => RootView(),
            ProductDetailsView.routeName: (context) =>
                const ProductDetailsView(),
            RegisterView.routeName: (context) => const RegisterView(),
            LoginView.routeName: (context) => const LoginView(),
            ProductListView.routeName: (context) => const ProductListView(),
          },
        );
      },
    );
  }
}
