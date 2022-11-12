import 'package:prac2/app_router.dart';
import 'package:prac2/data/repositories/auth_repositories_impl.dart';
import 'package:prac2/domain/entity/role_entity.dart';
import 'package:prac2/domain/usecase/auth.dart';
import 'package:flutter/material.dart';
import 'package:prac2/presentation/widgets/custom_buttons.dart';
import 'package:prac2/presentation/widgets/text_filed_obscure.dart';

class sing_up extends StatefulWidget {
  const sing_up({Key? key}) : super(key: key);

  @override
  State<sing_up> createState() => _sing_upState();
}




class _sing_upState extends State<sing_up> {
  GlobalKey<FormState> _key = GlobalKey();

  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _middleNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isObscure = false;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                const Text(
                  'Регистрация',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 26),
                ),
                const Spacer(),
                TextFormField(
                  maxLength: 30,
                  controller: _lastNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле фамилии пустое';
                    }
                    if (value.length < 2) {
                      return 'Фамилия не может быть меньше двух символов';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Фамилия',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLength: 30,
                  controller: _firstNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле имени пустое';
                    }
                    if (value.length < 2) {
                      return 'Имя не может быть меньше двух символов';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Имя',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLength: 30,
                  controller: _middleNameController,
                  validator: (value) {
                    if (value!.isNotEmpty) {
                        return 'Отчество пишется с большой буквы!';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Отчество (необязательное поле)',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLength: 30,
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле электронной почты пустое';
                    }
                    if(!isValidEmail(value))
                    {
                      return 'Некорректный ввод электронной почты';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLength: 16,
                  controller: _loginController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле логин пустое';
                    }
                    if (value.length < 3) {
                      return 'Логин должен быть не менее 3 символов';
                    }
                    if(!isValidLogin(value))
                    {
                      return 'Логин должен состоять из 8 символов символов Латиницы и содержать 1 число';
                    } 
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Логин',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLength: 8,
                  controller: _passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле пароль пустое';
                    }
                    if (value.length < 8) {
                      return 'Пароль должен быть длинной 8 символов';
                    }
                    if(!isValidPassword(value))
                    {
                      return 'Пароль должен содеражать минимум 1 символ в верхнем регистре, минимум 1 символ в нижнем регистре, минимум 1 символ-число, минимум 1 специальный символ( ! @ # \$ & * ~ )';
                    } 
                    return null;
                  },
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    hintText: 'Пароль',
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
                  content: 'Регистрация',
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      signUp();
                    } else {}
                  },
                ),
                const Spacer(flex: 3),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUp() async {
    final AuthRepositoriesImpl auth = AuthRepositoriesImpl();

    var result = await Auth(auth).singUp(RegistrationParams(
        lastName: _lastNameController.text,
        firstName: _firstNameController.text,
        middleName: _middleNameController.text,
        email: _emailController.text,
        login: _loginController.text,
        password: _passwordController.text));

    result.fold((l) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l),
        ),
      );
    }, (r) {
      Navigator.pop(context);
    });
  }
  
  bool isValidPassword(String value) {
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
        RegExp regExp = new RegExp(pattern);
        return regExp.hasMatch(value);
  }
  bool isValidEmail(String value) {
    String pattern =  r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$";
     RegExp regExp = new RegExp(pattern);
        return regExp.hasMatch(value);
  }
  bool isValidLogin(String value){
        String  pattern =  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
        RegExp regExp = new RegExp(pattern);
        return regExp.hasMatch(value);
  }
  
}