import 'dart:js_interop';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_spinemotion/pages/sign_in/bloc/sign_in_bloc.dart';

class SignController{
  final BuildContext context;
  const SignController({
    required this.context
});
  Future<void> handleSignIn(String type) async {
    try {
      if (type == "email") {
        //BlocProvider.of<SignInBloc>(context).state
        final state = context
            .read<SignInBloc>()
            .state;
        String emailAddress = state.email;
        String password = state.password;
        if (emailAddress.isEmpty) {

        }
        if (password.isEmpty) {

        }
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
              email: emailAddress, password: password);
          if(credential.user==null){
            //
          }
          if(!credential.user!.emailVerified){

          }

          var user = credential.user;
          if(user!=null){
            // we got verified user from firebase
          }else{
            //we have error getting user from firebase
          }

        } catch (e) {}
      }
    } catch (e) {}
  }
}