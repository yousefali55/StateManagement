import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/Cubits/Replace/replace_cubit.dart';

class Replace extends StatelessWidget {
  const Replace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            BlocBuilder<ReplaceCubit, ReplaceState>(
              builder: (context, state) {
                if(state is ShowText){
                return Text("Hello I'm Youseff");
                }
                else if(state is ShowImage){
              return SizedBox(
                height: 100,
                width: 100,
                child: Image.network(
                  "https://raw.githubusercontent.com/felangel/bloc/master/docs/assets/flutter_bloc_logo_full.png"),
            );
                }
                else if(state is ShowCircle){
              return Container(
                height: 200,
                width: 200,
                decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.red),
            );
                }
                else{
                  return Text("No Botton Selected");
                }
                }
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<ReplaceCubit>().showText();
                },
                child: Text("Show Text")),
            ElevatedButton(
                onPressed: () {
                  context.read<ReplaceCubit>().showImage();
                },
                child: Text("Show Image")),
            ElevatedButton(
                onPressed: () {
                  context.read<ReplaceCubit>().showCircle();
                },
                child: Text("Show Circle")),
          ],
        ),
      ),
    );
  }
}
