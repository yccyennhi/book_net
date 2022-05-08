// import 'package:bloc_example/modules/authenticate/login/login_bloc/login_bloc.dart';
// import 'package:bloc_example/modules/todo/screen/signed_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // var loginBloc;
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  void initState() {
    super.initState();
    //  loginBloc = BlocProvider.of<LoginBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email address',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  child: Text('Forgot your password?'),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              RaisedGradientButton(
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white),
                  ),
                  gradient: const LinearGradient(
                    colors: <Color>[
                      Color(0xFF72DFC5),
                      Color(0xFF1DDE7D),
                    ],
                  ),
                  onPressed: () {
                    print('button clicked');
                  }),
              Row(
                children: [
                  new Flexible(child: FacebookButton(), flex: 1),
                  const SizedBox(
                    width: 20,
                  ),
                  new Flexible(child: FacebookButton(), flex: 1),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key? key,
    required this.child,
    required this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF1DDE7D).withOpacity(0.2),
              offset: Offset(0, 4),
              blurRadius: 4,
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: () {},
            child: Center(
              child: child,
            )),
      ),
    );
  }
}

class FacebookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      // mainAxisSize: MainAxisSize.max,
      child: ElevatedButton.icon(
        icon: const Icon(Icons.facebook_outlined, size: 18),
        label: const Text('FACEBOOK'),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF3B5999)),
        ),
        onPressed: () {},
      ),
    );
  }
}
