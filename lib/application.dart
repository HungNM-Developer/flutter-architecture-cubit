import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/app_router.dart';
import 'cubit/theme/theme_bloc.dart';
import 'cubit/theme/theme_state.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 895),
      builder: (context, child) {
        return BlocBuilder<ThemeBloc, ThemeState>(
          bloc: context.read<ThemeBloc>(),
          builder: (context, state) {
            return MaterialApp.router(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              routeInformationProvider:
                  AppRouter.goRouter.routeInformationProvider,
              routeInformationParser: AppRouter.goRouter.routeInformationParser,
              routerDelegate: AppRouter.goRouter.routerDelegate,
              builder: (context, child) {
                return GestureDetector(
                  onTap: () {
                    final FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus &&
                        currentFocus.focusedChild != null) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    }
                  },
                  child: MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: child ?? const SizedBox.shrink(),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
