import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:magdsoft_flutter_task/presentation/router/app_router.dart';
import 'package:magdsoft_flutter_task/presentation/screens/user/help_screen.dart';
import 'package:magdsoft_flutter_task/presentation/screens/user/home_layout.dart';
import 'package:magdsoft_flutter_task/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_task/presentation/widgets/toast.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';
import 'business_logic/bloc_observer.dart';
import 'business_logic/global_cubit/global_cubit.dart';
import 'data/data_providers/local/cache_helper.dart';
import 'data/data_providers/remote/dio_helper.dart';


late LocalizationDelegate delegate;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();
  final locale =
      CacheHelper.getDataFromSharedPreference(key: 'language') ?? "en";
  delegate = await LocalizationDelegate.create(
    fallbackLocale: locale,
    supportedLocales: ['ar', 'en'],
  );
  await delegate.changeLocale(Locale(locale));
  runApp(
      MyApp(
        appRouter: AppRouter(),
      )
  );
}

class MyApp extends StatefulWidget {
  final AppRouter appRouter;

  const MyApp({
    required this.appRouter,
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Intl.defaultLocale = delegate.currentLocale.languageCode;
    delegate.onLocaleChanged = (Locale value) async {
      try {
        setState(() {
          Intl.defaultLocale = value.languageCode;
        });
      } catch (e) {
        showToast(e.toString());
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: ((context) => GlobalCubit()),
        ),
      ],
      child: BlocConsumer<GlobalCubit, GlobalState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Sizer(
            builder: (context, orientation, deviceType) {
              return LocalizedApp(
                delegate,
                LayoutBuilder(builder: (context, constraints) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: 'Werash',
                    localizationsDelegates: [
                      GlobalCupertinoLocalizations.delegate,
                      DefaultCupertinoLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      delegate,
                    ],
                    locale: delegate.currentLocale,
                    supportedLocales: delegate.supportedLocales,
                    // onGenerateRoute: widget.appRouter.onGenerateRoute,
                    theme: ThemeData(
                      textTheme: TextTheme(
                        displayLarge: TextStyle(
                          fontSize: 30.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                        ),
                        displayMedium:TextStyle(
                          fontSize: 20.sp,
                          color:AppColors.primary,
                          fontWeight: FontWeight.w400,
                        ),
                        bodySmall: TextStyle(
                          fontSize: 12.sp,
                          color:AppColors.primary,
                          fontWeight: FontWeight.w400,
                        ),
                        displaySmall:TextStyle(
                          fontSize: 10.sp,
                          color:AppColors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                        titleLarge:TextStyle(
                            color:AppColors.white,
                            fontSize:30.sp,
                            fontWeight:FontWeight.w300
                        ),
                      ),
                      fontFamily: 'cairo',
                      // scaffoldBackgroundColor: AppColors.white,
                      appBarTheme: const AppBarTheme(
                        elevation: 0.0,
                        systemOverlayStyle: SystemUiOverlayStyle(
                          statusBarColor:AppColors.transparent,
                          statusBarIconBrightness: Brightness.dark,
                        ),
                      ),
                    ),
                    home:HelpScreen(),
                  );
                }),
              );
            },
          );
        },
      ),
    );
  }
}
