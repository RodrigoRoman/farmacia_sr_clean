import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  // static const routeName = '/login';
  // <returnType> Function(<parameters>) fName;
	  // final Function toggleDrawer;
    // Call the callback function somewhere, eg constructor, textfield etc.
    // LoginScreen(this.toggleDrawer);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class SignInWithText extends StatelessWidget{
  const SignInWithText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '- O -',
          style: Theme.of(context).textTheme.caption
        ),
        SizedBox(height: 20.0),
        Text(
          'Ingresa con',
          style:Theme.of(context).textTheme.bodySmall
        ),
      ],
    );
  }

}
class _LoginScreenState extends State<LoginScreen> {
  
  final _formKey = GlobalKey<FormState>();
 
  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: Padding(
          child: TextButton(
          onPressed: () => print('Forgot Password Button Pressed'),
          child: Text(
            'Olvidaste tu contraseña?',
            // style: kLabelStyle,
          ),
        ),
        padding: EdgeInsets.all( 0.0),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Recordarme',
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }


  Widget _buildSignupBtn() {
    return TextButton(
      onPressed: ()=>widget.toggleDrawer(),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Aún no tienes cuenta? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Registrarme',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';
    String? dummyValidator(String? value){
        return null;
    } 
    return  AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF73AEF5),
                      Color(0xFF61A4F1),
                      Color(0xFF478DE0),
                      Color(0xFF398AE5),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 80.0,
                    vertical: 120.0,
                  ),
                  child: Form(
                      key: _formKey,
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          child:Icon(
                            Icons.person,
                            color: Colors.white,
                            size:45
                          ),
                          radius:35,
                        ),
                        Text(
                          'Ingresar',
                          style: Theme.of(context).textTheme.headline1
                        ),
                        SizedBox(height: 30.0),
                        UserInput(fieldText:'Email o Nombre de Usuario',fieldType:TextInputType.emailAddress,obscure:false,fieldIcon:Icons.email,validator:Provider.of<AuthMod>(context,listen:false).emailValidator,controller:nameController),
                        SizedBox(
                          height: 30.0,
                        ),
                        UserInput(fieldText: 'Contraseña',fieldType:TextInputType.visiblePassword,obscure:true,fieldIcon:Icons.password,validator:Provider.of<AuthMod>(context,listen:false).passwordValidator,controller:passwordController),
                        _buildForgotPasswordBtn(),
                        _buildRememberMeCheckbox(),
                        mainActionBtn(context,12.0,'Ingresar',() async{
                          print('email and password');
                          print(Provider.of<AuthMod>(context,listen:false).email);
                          print(Provider.of<AuthMod>(context,listen:false).password);
                              _auth.signInEmailPassword(Provider.of<AuthMod>(context,listen:false).email, Provider.of<AuthMod>(context,listen:false).password);
                            }),
                        _buildSignInWithText(),
                        buildSocialBtnRow(),
                        _buildSignupBtn(),
                        // _testBtn()
                      ],
                    ),
                  ),
              
              )
            ],
          ),
        ),
    );
  }
}