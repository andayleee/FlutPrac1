import 'package:prac2/app_router.dart';
import 'package:prac2/data/repositories/auth_repositories_impl.dart';
import 'package:prac2/domain/entity/role_entity.dart';
import 'package:prac2/domain/usecase/auth.dart';
import 'package:flutter/material.dart';
import 'package:prac2/presentation/widgets/custom_buttons.dart';
import 'package:prac2/presentation/widgets/text_filed_obscure.dart';

class sing_in extends StatefulWidget {
  const sing_in({Key? key}) : super(key: key);

  @override
  State<sing_in> createState() => _sing_inState();
}

class _sing_inState extends State<sing_in> {
  GlobalKey<FormState> _key = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool isObscure = true;
  bool _isValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Expanded(child: SizedBox()),
                const Text(
                  'Авторизация',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40),
                ),
                const Expanded(child: SizedBox()),
                TextFormField(
                  controller: _loginController,
                  validator: (value) {
                    if (!_isValid) {
                      return null;
                    }
                    if (value!.isEmpty) {
                      return 'Поле логин пустое';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Логин',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  validator: (value) {
                    if (!_isValid) {
                      return null;
                    }
                    if (value!.isEmpty) {
                      return 'Поле пароль пустое';
                    }
                    return null;
                  },
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    suffixIcon: TextFieldObscure(isObscure: (value) {
                      setState(() {
                        isObscure = value;
                      });
                    }),
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  content: 'Войти',
                  onPressed: () {
                    _isValid = true;
                    if (_key.currentState!.validate()) {
                      signIn();
                    } else {}
                  },
                ),
                const Expanded(flex: 3, child: SizedBox()),
                InkWell(
                  borderRadius: BorderRadius.circular(4),
                  onTap: () {
                    _loginController.clear();
                    _passwordController.clear();
                    _isValid = false;
                    _key.currentState!.validate();
                    Navigator.pushNamed(context, screen2NamePage);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Регистрация',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }

   void signIn() async {
    final AuthRepositoriesImpl auth = AuthRepositoriesImpl();
    var result = await Auth(auth).singIn(AuthParams(
      login: _loginController.text,
      password: _passwordController.text,
    ));
    result.fold((l) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l),
        ),
      );
    }, (r) {
      switch (r) {
        case RoleEnum.admin:
          {
           Navigator.pushNamed(context, screen3NamePage);
            break;
          }
        case RoleEnum.user:
          Navigator.pushNamed(context, screen4NamePage);
          break;
      }
    });
  }
}