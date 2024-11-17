import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lulu_ai_stylist/ui/registration_screen.dart';

import 'bottom_nav.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  bool secure = true;

  Future<void> signIn()async{

    try{

      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailcontroller.text.trim(),
          password: passwordcontroller.text
      );

      var authCredential = userCredential.user;

print(authCredential!.uid.length);
      if(authCredential!.uid.isNotEmpty)
      {

        Navigator.pushReplacement(context ,MaterialPageRoute(builder: (_)=>BottomNavController()));
      }
      else{
ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Something is wrong')));

      }
    }
    catch(e)
    {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('User Not Found'),));
      print('Eror Occureed>>> is: ${e}');
    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20,top: 60),
            child: Text('Sign In',style: TextStyle(color: Colors.white, fontSize: 34),),
          ),
          const SizedBox(height: 30,),
          Expanded(
            child: Container(

              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(

                  children: [
                    const Padding(
                      padding: EdgeInsets.only( top: 30),
                      child: Text('Welcome Back',style: TextStyle(color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold, fontSize: 30),),
                    ),
                    const Text('Glad to see you back my buddy!',style: TextStyle(color: Colors.grey,fontSize: 15,letterSpacing: 1.1),),
                    const SizedBox(height: 30,),
                    TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(

                              decoration: BoxDecoration(
                                  color: Colors.deepOrangeAccent,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: const Icon(Icons.email_outlined),
                            ),
                          ),
                          hintText: "Enter your Email",
                          border: InputBorder.none,
                          label: const Text('Email')
                      ),
                    ),
                    TextFormField(
                      controller: passwordcontroller,
                      obscureText: secure,
                      decoration: InputDecoration(


                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(

                            decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: const Icon(Icons.lock),
                          ),
                        ),
                        hintText: "Enter your Password",
                        border: InputBorder.none,
                        label: const Text('Password'),
                          suffixIcon: IconButton(onPressed: (){

                            setState(() {
                              secure = !secure;
                            });
                          },icon:secure? const Icon(Icons.visibility_off): const Icon( Icons.visibility)),


                      ),
                    ),
                    const SizedBox(height: 50,),
                    ElevatedButton(onPressed: (){
                      // sign in function call
                      signIn();
                    }, child: const Text('SIGN IN')),

                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have accoun?",style: TextStyle(color: Colors.grey),),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>const RegistrationScreen()));
                        }, child: const Text('Sign Up',style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold),))
                      ],
                    )



                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}