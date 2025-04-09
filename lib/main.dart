import 'package:cook/config/colors.dart';
import 'package:cook/config/theme.dart';
import 'package:cook/features/authentication/presentation/pages/sign_in_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/credentitals/app_credentials.dart';

Future<void> main() async{
  await Supabase.initialize(
    url: AppCredentials.SUPABASE_URL,
    anonKey: AppCredentials.SUPABASE_ANON_KEY,
  );
  runApp(const CookApp());
}

class CookApp extends StatelessWidget {
  const CookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cook App",
      theme: appTheme,
      color: AppColors.eyeSafeWhite,
      home: const ScreenUtilInit(
        designSize: Size(411.42857142857144, 866.2857142857143),
        child: SignInPage(),
      ),
    );
  }
}
