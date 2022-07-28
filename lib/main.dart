import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inova/presentation/screens/home_screen.dart';

import 'cubit/instructor_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 760),
      minTextAdapt: true,
      builder: (context, child) {
        return BlocProvider<InstructorCubit>(
          create: (context) => InstructorCubit(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Inova',
            theme: ThemeData(
              primaryColor: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          ),
        );
      },
      child: const HomeScreen(),
    );
  }
}
