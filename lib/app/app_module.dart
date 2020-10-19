import 'package:flutter_pattern_slidy/app/modules/login/login_module.dart';
import 'package:flutter_pattern_slidy/app/pages/splash/splash_page.dart';

import 'pages/splash/splash_controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter_pattern_slidy/app/shared/utils/constants.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pattern_slidy/app/app_widget.dart';

import 'modules/home/home.module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $SplashController,
        $AppController,
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => SplashPage()),
        ModularRouter('/login', module: LoginModule()),
        ModularRouter('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
