import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = false;

  String? _validatormail(String? value) {
    if (value == null || value.isEmpty) return 'Please enter email';
    final _patternEmail = r'^[^@]+@[^@]+\.[^@]+';
    final regExp = RegExp(_patternEmail);
    if (!regExp.hasMatch(value)) return 'Please enter a valid email';
    return null;
  }
  
  String? _validatorpassword(String? value) {
    if (value == null || value.isEmpty) return 'Please enter password';
    if (value.length < 6) return 'Please enter a valid password';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login page",
          style: TextStyle(
            color: Colors.white, 
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ), 
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/1728129780449.jpeg',
                height: 120,
                width: 120,
              ),
              const Text(
                "Welcome back !",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 30
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _mailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  hintText: 'Enter Your Email',
                  prefixIcon: const Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: _validatormail,
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: !_passwordVisible,
                controller: _passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  hintText: 'Enter Your Password',
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                    icon: Icon(
                      _passwordVisible 
                        ? Icons.visibility 
                        : Icons.visibility_off
                    ),
                  ),
                ),
                keyboardType: TextInputType.text,
                validator: _validatorpassword,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                     
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                    Navigator.pushNamed(context, "/home");
                  }
                },
                child: const Text('Login'),
              ),
              TextButton(onPressed:(){ Navigator.pushNamed(context,'/register');}, child: Text('Don\'t have an account'))
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _mailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}