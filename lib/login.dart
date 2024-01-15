import 'package:flutter/material.dart';

class InstaLogin extends StatefulWidget {
  const InstaLogin({super.key});

  @override
  State<InstaLogin> createState() => _InstaLoginState();
}

class _InstaLoginState extends State<InstaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea( // area segura
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // alinhamento do eixo principal
          children: [
            
            _topWidget( ),
            SizedBox(height: 120),
            //Flexible(child: Container(), flex: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _centerWidget(),
            ),
            Flexible(child: Container(), flex: 2),
            const Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: _bottomWidget(),
            ),
          ],
        ),
      ),
    );
  }


  Widget _topWidget() {
    return Text('data',
     style: TextStyle(color: Colors.white),
    );
    
  }



  Widget _centerWidget() {
    return Column(
      children: [
        Image.asset(
          "assets/images/logo_insta.png",
          height: 50,
        ),
        const SizedBox(height: 24),
        TextField(   //campo do texto
          decoration: InputDecoration(
            hintText: "Email",
            border: OutlineInputBorder( //contorno da bordar de entrada
              borderSide: Divider.createBorderSide(context), //borda do lado
            ),
            focusedBorder: OutlineInputBorder( // focada border e borda de entrada online
              borderSide: Divider.createBorderSide(context),
            ),
            enabledBorder: OutlineInputBorder( //borda habilitada
              borderSide: Divider.createBorderSide(context), // borda lado
            ),
            
          ),
        ),
        const SizedBox(height: 24),
        TextField( 
          style: TextStyle( color: Colors.black,),
          decoration: InputDecoration(
            hintText: "Senha",
            border: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),
            ),
          
          ),
          
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 48,
          width: double.infinity, //duplo infinito
          child: ElevatedButton( // botao elevar
            onPressed: () {},
            child: const Text("Login"),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Esqueceu seus detalhes de login?"),
            Text("Obtenha ajuda para fazer login ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold)
                ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: const [
            Flexible(child: Divider(thickness: 2)), //grossura da divisioria
            Text(" OR "),
            Flexible(child: Divider(thickness: 2)),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo_facebook.png", height: 32),
            const Text(" Entrar com Facebook"),
          ],
        )
      ],
    );
  }

  Widget _bottomWidget() { // fondo
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Não tenho uma conta"),
        Text("Inscrever-se",
         style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold)),
      ],
    );
  }
}
