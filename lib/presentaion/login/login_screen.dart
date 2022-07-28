import '../../service/service_blocs/authentication/authentication_bloc.dart';
import '../widgets/api_error_snak_bar.dart';
import '/presentaion/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constants.dart';

final formKey = GlobalKey<FormState>();
TextEditingController emailController = TextEditingController();
TextEditingController passeordController = TextEditingController();

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {  
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBarWidget(title: 'LogIn'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          width: size.width * .8,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFormField(
                  controller: emailController,
                  validator: ((value) {
                    RegExp emailReGex = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                    if (value == '') {
                      return 'Enter your email';
                    } else if (emailReGex.hasMatch(value!) == false) {
                      return "Enter a valid email";
                    } else {
                      return null;
                    }
                  }),
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                constsantHeight,
                TextFormField(
                  validator: (value) {
                    if (value == '') {
                      return "Enter your passeord";
                    } else {
                      return null;
                    }
                  },
                  controller: passeordController,
                  decoration: const InputDecoration(labelText: "Password"),
                  obscureText: true,
                ),
                constsantHeight,
                BlocConsumer<AuthenticationBloc, AuthenticationState>(
                  listener: (context, state) {
                    if (state.connectionTimeOutError) {
                      showErrormessage('Connection Timeout\nplease check your connection or\ntry after some Time', context);
                    } else if (state.wrongUser) {
                      showErrormessage('Wrong user name or Password', context);
                    }else if(state.errorOccured){
                      showErrormessage("An Error Occured please Try after some time", context);
                    }else if(state.loggingSucess){
                      Navigator.of(context).pushNamedAndRemoveUntil(homePageRouteName, (route) => false);
                    }
                  },
                  builder: (context, state) {
                    return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(3)
                        ),
                        onPressed: () {
                          if (state.isLoading == false) {
                            if (formKey.currentState!.validate()) {
                              context.read<AuthenticationBloc>().add(LogIn(
                                  emailController.text,
                                  passeordController.text));
                            }
                          }
                        },
                        child: state.isLoading
                            ? const CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 2,
                            )
                            : const Text('LogIn'));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  
  }
}


