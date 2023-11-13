import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_e_commerce/domain/di/di.dart';
import 'package:route_e_commerce/features/auth/views/login/login_view.dart';
import 'package:route_e_commerce/features/auth/views/register/register_view.dart';
import 'package:route_e_commerce/features/cart/view/cart_view.dart';
import 'package:route_e_commerce/features/cart/view_model/cart_cubit/cart_cubit.dart';
import 'package:route_e_commerce/features/product_list/view/product_list_view.dart';
import 'package:route_e_commerce/features/product_details/product_details_view.dart';
import 'package:route_e_commerce/features/root/view/root_view.dart';
import 'package:route_e_commerce/utils/my_theme.dart';
import 'package:route_e_commerce/utils/shared_pref/shared_pref_utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  late String route;
  await SharedPrefUtils.init();
  await Future.delayed(const Duration(seconds: 3));
  var user = SharedPrefUtils.getData("token");
  print(user);
  if (user == null) {
    route = LoginView.routeName;
  } else {
    route = RootView.routeName;
  }
  FlutterNativeSplash.remove();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<CartCubit>(
          create: (context) => CartCubit(
              addToCartUseCase: injectAddToCartUseCase(),
              getUserCartUseCase: injectGetUserCartUseCase())),
    ],
    child: ECommerceApp(
      route: route,
    ),
  ));
}

class ECommerceApp extends StatelessWidget {
  final String route;
  const ECommerceApp({super.key, required this.route});

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
          initialRoute: route,
          routes: {
            RootView.routeName: (context) => RootView(),
            ProductDetailsView.routeName: (context) =>
                const ProductDetailsView(),
            RegisterView.routeName: (context) => const RegisterView(),
            LoginView.routeName: (context) => const LoginView(),
            ProductListView.routeName: (context) => const ProductListView(),
            CartView.routeName: (context) => const CartView(),
          },
        );
      },
    );
  }
}
