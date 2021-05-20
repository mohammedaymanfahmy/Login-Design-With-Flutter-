import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    //hintText:'Email Address',
                    labelText: 'E-Mail Address',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  //Password
                  controller: passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    //hintText:'Email Address',
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),

                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                        onPressed: () {
                          print("you cliked the text button");
                        },
                        child: Text("Register Now"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
