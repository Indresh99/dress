import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin{
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Animation animation;
  AnimationController animationController;
  final key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    String _email, _password;
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child){
          return Scaffold(
            key: key,
            resizeToAvoidBottomPadding: false,
            resizeToAvoidBottomInset: false,
            body: Stack(

              children: <Widget>[

                Carousel(
                  //boxFit: BoxFit.fill,
                  images: [
                    //ExactAssetImage('assests/images/bribe.jpg'),
                    //ExactAssetImage('assests/images/splash.jpg'),
                    //ExactAssetImage('assests/images/slide1.jpg'),
                    ExactAssetImage('assests/images/slide3.jpg'),
                    ExactAssetImage('assests/images/slide5.jpg'),
                    ExactAssetImage('assests/images/slide2.jpg'),
                    ExactAssetImage('assests/images/slide7.jpg'),
                    ExactAssetImage('assests/images/slide8.jpg'),
                    ExactAssetImage('assests/images/slide4.jpg'),
                    ExactAssetImage('assests/images/slide6.jpg'),
                    ExactAssetImage('assests/images/slide9.jpg'),
                    ExactAssetImage('assests/images/slide10.jpg'),
                    ExactAssetImage('assests/images/slide11.jpg'),
                    ExactAssetImage('assests/images/slide12.jpg'),
                  ],
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(milliseconds: 1000),
                  showIndicator: false,
                  boxFit: BoxFit.fill,
                  overlayShadow: true,

                  onImageTap: (count){
//                    key.currentState.showSnackBar(SnackBar(content: Text("Bridal Collection")));
                  },
                  autoplay: true,

                ),
                Positioned(
                  child: Transform(
                    transform: Matrix4.translationValues(0.0, animation.value * height, 0.0),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.white.withOpacity(0.5),

                        ),
                        width: width-50,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("User Login", style: TextStyle(
                                fontFamily: 'doctor',
                                fontSize: 22
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (input){
                                  if(input.isEmpty) {
                                    return 'Email must no empty';
                                  }
                                },
                                onSaved: (input){
                                  _email = input;
                                },
                                style: TextStyle(

                                ),
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  fillColor: Colors.grey,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(style: BorderStyle.solid),
                                  ),
                                   border: OutlineInputBorder(
                                     borderRadius: BorderRadius.all(Radius.circular(10.0))
                                   )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (input){
                                  if(input.length < 6) {
                                    return 'Your password needs to be atleat 6 characters';
                                  }
                                },
                                onSaved: (input){
                                  _password = input;
                                },
                                obscureText: true,
                                style: TextStyle(

                                ),
                                cursorColor: Colors.redAccent,
                                decoration: InputDecoration(
                                    fillColor: Colors.grey,
                                    hintText: "Password",
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(style: BorderStyle.solid),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    )
                                ),
                              ),
                            ),

                            //SizedBox(height: 100,)

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(



                  child: Transform(
                    transform: Matrix4.translationValues(animation.value *width, 180.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: MaterialButton(
                            highlightColor: Colors.blue,
                            onPressed: (){

                            },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),side: BorderSide(color: Colors.white)),
                            textTheme: ButtonTextTheme.accent,
                            elevation: 20,

                            child: Padding(
                              padding: const EdgeInsets.only(left: 50, bottom: 12,right: 50,top: 12),
                              child: Text("Sign In", style: TextStyle(
                                  fontFamily: 'times',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  fontStyle: FontStyle.normal
                              ),),
                            ),
                            color: Colors.redAccent.withOpacity(0.7),
                            textColor: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: MaterialButton(
                                  highlightColor: Colors.blue,
                                  onPressed: (){

                                  },
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),side: BorderSide(color: Colors.redAccent)),
                                  textTheme: ButtonTextTheme.accent,
                                  elevation: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text("Sign Up", style: TextStyle(
                                        fontFamily: 'times',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal
                                    ),),
                                  ),
                                  color: Colors.white.withOpacity(0.7),
                                  textColor: Colors.redAccent,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: MaterialButton(
                                  highlightColor: Colors.blue,
                                  onPressed: (){

                                  },
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),side: BorderSide(color: Colors.redAccent)),
                                  textTheme: ButtonTextTheme.accent,
                                  elevation: 20,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset('assests/images/google.png', height: 30,width: 30,),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text("Google Sign In", style: TextStyle(
                                            fontFamily: 'times',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            fontStyle: FontStyle.normal
                                        ),),
                                      ),
                                    ],
                                  ),
                                  color: Colors.white.withOpacity(0.7),
                                  textColor: Colors.redAccent,
                                ),
                              ),
                            ),

                          ],
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Forget Password", style: TextStyle(color: Colors.white),),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]
            )
          );
        }
    );
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn));

    animationController.forward();
  }

  void signIn(){
    final formstate = _formkey.currentState;
    if(formstate.validate()){

    }
  }


}
