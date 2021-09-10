import 'package:find_my_money/application/general/bloc/general_bloc.dart';
import 'package:find_my_money/infrastructure/di/di.dart';
import 'package:find_my_money/presentation/app_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set up device orientations.
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  // Configure Dependency Injections and init() them.
  await configureDependencyInjection();

  // Init bloc persistent storage.
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  // Initiate service locator and app main
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<GeneralBloc>()),
      ],
      child: const AppMain(),
    ),
  );
}
