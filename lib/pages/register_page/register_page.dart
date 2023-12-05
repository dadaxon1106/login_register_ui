import 'package:app_development/pages/shop_page/shop_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    with TickerProviderStateMixin {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/background_register.png"),
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 58,
          ),
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "English",
                      style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Image.asset(
                      "assets/icons/icon_down.png",
                      width: 12,
                      height: 12,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  "Sign In to recharge Direct",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                  // textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 24,
                ),
                Form(
                  key: _key,
                  child: Column(
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.disabled,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Enter Email",
                          suffixIcon: const Icon(
                            Icons.cancel_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "INVALID EMAIL";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.disabled,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: '••••••••••••',
                          hintStyle: const TextStyle(
                            fontSize: 22,
                          ),
                          suffixIcon: const Icon(
                            CupertinoIcons.eye_slash,
                            color: Colors.grey,
                          ),
                        ),
                        validator: (value) {
                          if (value!.length < 8) {
                            return "Please try again";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Recover Password ?",
                      style: TextStyle(
                        color: Color(0xFFC7C7C7),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    var checkRegister = _key.currentState!.validate();
                    if (checkRegister) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        CupertinoPageRoute(
                          builder: (context) {
                            return const ProductPage();
                          },
                        ),
                        (route) => false,
                      );
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xFF4461F2),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x264461F2),
                          blurRadius: 20,
                          spreadRadius: 20,
                        ),
                      ],
                    ),
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.7,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 0.5,
                      width: 90,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text(
                      "Or continue with",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFACADAC),
                          letterSpacing: 1),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Container(
                      height: 0.5,
                      width: 90,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF6F6F6),
                      ),
                      child: const Image(
                        height: 20,
                        width: 20,
                        image: AssetImage(
                          "assets/icons/google_icon.png",
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 3),
                            color: Colors.grey.shade400,
                            blurRadius: 2,
                            spreadRadius: 2,
                          )
                        ],
                      ),
                      child: Image.asset(
                        "assets/icons/apple_logo.png",
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF6F6F6),
                      ),
                      child: Image.asset("assets/icons/facebook_logo.png"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 23,
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(text: "if you don't an account\nyou can "),
                      TextSpan(
                        text: "Register here!",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
