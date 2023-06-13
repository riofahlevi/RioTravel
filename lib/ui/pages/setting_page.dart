import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp_bwa/cubit/auth_cubit.dart';
import 'package:travelapp_bwa/cubit/pages_cubit.dart';
import 'package:travelapp_bwa/shared/theme.dart';
import 'package:travelapp_bwa/ui/pages/widgets/custom_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(backgroundColor: kRedColor, content: Text(state.error)),
          );
          // TODO: implement listener
        } else if (state is AuthInitial) {
          context.read<PagesCubit>().setPage(0);
          Navigator.pushNamedAndRemoveUntil(
              context, '/sign-in', (route) => false);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xff5C40CC),
              title: Center(
                child: const Text(
                  "About Me",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            backgroundColor: kPrimaryColor,
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
                const Text(
                  "Rio Fahlevi",
                  style: TextStyle(
                      fontFamily: 'Pacifico1',
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                const Text(
                  "Flutter Developer",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2.5,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 150.0,
                  height: 50.0,
                  child: Divider(color: Colors.white),
                ),
                const Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Color(0xff5C40CC),
                    ),
                    title: Text(
                      "+62 812 5347 6467",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Color(0xff5C40CC)),
                    ),
                  ),
                ),
                const Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Color(0xff5C40CC),
                    ),
                    title: Text(
                      "riofahlevi2011@gmail.com",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        color: Color(0xff5C40CC),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: CustomButton(
                    title: 'Sign Out',
                    onPressed: () {
                      context.read<AuthCubit>().signOut();
                    },
                  ),
                ),
              ],
            )),
          ),
        );
        // return Center(
        //     child: CustomButton(
        //   title: 'Sign Out',
        //   onPressed: () {
        //     context.read<AuthCubit>().signOut();
        //   },
        //   width: 220,
        // ));
      },
    );
  }
}
