import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
            child: Image.asset(
          "../images/user.png",
          width: 200,
          height: 200,
        )),
        Container(
          padding: EdgeInsets.all(20),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Username",
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Password",
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purpleAccent[200]),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                     Navigator.of(context).pushReplacementNamed("homepage");
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("You have not an account ? "),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("signup");
                      },
                      child: Text(
                        "Click Here",
                        style: TextStyle(color: Colors.purple),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
        )
      ],
    ));
  }
}
