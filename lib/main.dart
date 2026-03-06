import 'package:flutter/material.dart';
import 'package:music_library/core/constants/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'data/repositories/track_repository.dart';
import 'data/services/api_service.dart';
import 'controllers/track_controller.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TrackController(
            TrackRepository(ApiService()),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Music Library",
        theme: AppTheme.lightTheme,
        initialRoute: "/",
        routes: AppRoutes.routes,
      ),
    );
  }
}