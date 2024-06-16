import 'package:flutter_design_app/data/api/api_client.dart';
import 'package:flutter_design_app/data/repository/auth_repo.dart';
import 'package:flutter_design_app/data/repository/question_repo.dart';
import 'package:flutter_design_app/utils/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_app/views/screens/auth/sign_in_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controllers/auth_controller.dart';
import 'utils/constant/app_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => AppThemes()),
      ChangeNotifierProvider(
          create: (context) =>
              HttpService(AppConstants.BASE_URL, sharedPreferences)),
      ChangeNotifierProvider(
          create: (context) => AuthRepository(
              httpService: Provider.of<HttpService>(context, listen: false),
              sharedPreferences: sharedPreferences)),
      ChangeNotifierProvider(
          create: (context) => AuthController(
              authRepository:
                  Provider.of<AuthRepository>(context, listen: false))),
      ChangeNotifierProvider(
          create: (context) => QuestionRepo(
                httpService: Provider.of<HttpService>(context, listen: false),
              )),
      
     
    ], child: const MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final isLogged = Provider.of<AuthRepository>(context).isLogged();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Provider.of<AppThemes>(context).currentTheme,
        home:const  SignInScreen(),
       );
  }
}
