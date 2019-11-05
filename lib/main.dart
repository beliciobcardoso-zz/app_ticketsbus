import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Este widget é a raiz do seu aplicativo.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicketsBus',
      theme: ThemeData(
        // Esse é o tema do seu aplicativo.
        //
        // Tente executar seu aplicativo com "flutter run". Você verá o
        // aplicativo possui uma barra de ferramentas azul. Então, sem sair do aplicativo, tente
        // alterando o primarySwatch abaixo para Colors.green e depois invoque
        // "hot reload" (pressione "r" no console em que você executou "flutter run",
        // ou simplesmente salve suas alterações em "hot reload" em um Flutter IDE).
        // Observe que o contador não foi redefinido para zero; a aplicação
        // não é reiniciado.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'App TicketsBus'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

        // Este widget é a página inicial do seu aplicativo. É stateful, significando
        // que possui um objeto State (definido abaixo) que contém campos que afetam
        // como está.

        // Esta classe é a configuração para o estado. Ele mantém os valores (neste
        // case o título) fornecido pelo pai (neste caso, o widget App) e
        // usado pelo método de construção do Estado. Os campos em uma subclasse Widget são
        // sempre marcado como "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
        // Essa chamada para setState informa à estrutura do Flutter que algo tem
        // alterado neste estado, o que faz com que ele execute novamente o método de compilação abaixo
        // para que a exibição possa refletir os valores atualizados. Se nós mudássemos
        // _counter sem chamar setState (), o método build não seria
        // ligou novamente,
        //e assim nada parece acontecer.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
          // Esse método é executado novamente toda vez que setState é chamado, por exemplo, como concluído
          // pelo método _incrementCounter acima.
          //
          // A estrutura Flutter foi otimizada para criar métodos de compilação reexecutados
          // rápido, para que você possa reconstruir qualquer coisa que precise ser atualizada
          // do que ter que alterar individualmente instâncias de widgets.
    return Scaffold(
      appBar: AppBar(
          // Aqui pegamos o valor do objeto MyHomePage que foi criado por
          // o método App.build e use-o para definir o título da nossa barra de aplicativos.
        title: Text(widget.title),
      ),
      body: Center(
          // Center é um widget de layout. É preciso um único filho e o posiciona
          // no meio do pai.
        child: Column(
          // A coluna também é um widget de layout. É preciso uma lista de crianças e
          // organiza-os verticalmente. Por padrão, ele se dimensiona para se ajustar ao seu
          // filhos horizontalmente e tenta ser tão alto quanto seu pai.
          //
          // Invoque "debug painting" (pressione "p" no console, escolha o
          // Ação "Alternar Debug Paint" do Inspetor de vibração no Android
          // Studio ou o comando "Toggle Debug Paint" no código do Visual Studio)
          // para ver o wireframe de cada widget.
          //
          // A coluna possui várias propriedades para controlar como se dimensiona e
          // como posiciona seus filhos.
          //Aqui usamos mainAxisAlignment para
          // centraliza os filhos verticalmente; o eixo principal aqui é a vertical
          // eixo porque as colunas são verticais (o eixo transversal seria
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Você apertou o botão várias vezes:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // Essa vírgula à direita torna a formatação automática mais agradável para os métodos de compilação.
    );
  }
}
