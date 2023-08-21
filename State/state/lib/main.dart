import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/Cubits/Replace/replace_cubit.dart';
import 'package:state/screens/Replace.dart';
import 'package:state/screens/ReplaceSetState.dart';

void main() {
  runApp(MyApp());
}
/* class MyApp extends StatelessWidget {       if u wanna ReplaceUi with state      
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Replace(),
    );
  }
} */


class MyApp extends StatelessWidget {             
  const MyApp({super.key});

  @override
Widget build(BuildContext context){
    return MultiBlocProvider(
      providers: [
      BlocProvider<ReplaceCubit>(
      create: (BuildContext context) => ReplaceCubit(),
      ),
      ],
      child: MaterialApp(
        home:Replace1(),
      ),
    );
  }
} 





/* class MyApp extends StatelessWidget { if u wanna password with set state
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password Toggle Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Password(),
    );
  }
}
 */


/* class MyApp extends StatelessWidget {          if u wanna password with cubit
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password Toggle Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => PasswordCubit(),
        child: PasswordScreen(),
      ),
    );
  }
}  */

















/* class MyApp extends StatelessWidget { if u wanna radio
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (BuildContext context) => RadioCubit(), // Create the RadioCubit instance
        child: const RadioScreen(),
      ),
    );
  }
} */




/* class MyApp extends StatelessWidget { if u wanna Filter with Filter with setState()
  const MyApp({super.key});
@override                                    
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FilterBar(),
    );
  }
} */




/* class MyApp extends StatelessWidget {  if u wanna filter with Cubit
  const MyApp({super.key});

  @override                                   
  Widget build(BuildContext context){
    return MultiBlocProvider(
      providers: [
      BlocProvider<FilterCubit>(
      create: (BuildContext context) => FilterCubit(),
),
      ],
      child: MaterialApp(
        home:Filtercubit(),
      ),
    );
  }
}  */

