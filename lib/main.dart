import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}
class _AppState extends State<App> {
  var isVisible = false;

  var portfolios = [
    'Flutter를 활용한 간단한 앱',
    'Java를 만든 파일 암호화 복호화',
    'Java를 활용한 Kiosk',
    'Flutter를 이용한 계산기 프로그램',
    'JavaFx를 사용한 성적처리 프로그램',
    'Flutter로 만든 영화 데이터',
    'Flutter를 이용한 급식 정보',
    'Github.io로 나만의 웹사이트 만들기',
    'Github의 첫 화면 프로필 꾸미기',
    'Html Css Js를 이용한 웹사이트 만들기',
    'SQL 기본 문법',
    'Flutter의 Card와 Stack를 이용한 영화 카드 만들기',
    
  ] ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Card(
            shape:const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              ),
              side: BorderSide(color: Colors.grey),
            ),
            elevation: 10.0,
            margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    height: 10,
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
                      width:150,
                      height:150,
                      child:const Image(
                        image: AssetImage('images/an.png'),
                      ),
                  ),
                  const SizedBox( 
                    width: double.infinity,
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey,
                  ),
                  
                  Container(
                    padding:const  EdgeInsets.all(15),
                    child:const Text("KimJiHo's Page", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),  
                  ),
                  Text('Kimjh4495@naver.com',style: TextStyle(fontSize: 19,color: Colors.blueGrey[500]),),
                  const SizedBox( 
                    width: double.infinity,
                    height: 10,
                  ),
                  Text('Full-Stack Developer',style: TextStyle(fontSize: 19,color: Colors.blueGrey[500]),),
                  const SizedBox( 
                    width: double.infinity,
                    height: 30,
                  ),
                  MaterialButton(
                    onPressed: () {
                      isVisible = !isVisible;
                      setState(() {
                      });
                    },
                    color: Colors.pink[300],
                    textColor: Colors.white,
                    child: Text('포트폴리오'),
                    padding: const EdgeInsets.fromLTRB(30,10,30,10),
                    shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(6)
                            ),
                          )
                  ),
                  const SizedBox(height: 10,),
                  Visibility(
                    visible: isVisible,
                    child: Container(
                      color: Colors.greenAccent[100],
                      width: double.infinity,
                      height: 500,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            for(var i=0; i<portfolios.length; i++) _myBox(portfolios[i])
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _myBox(String text) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(),
      color: Colors.white
      ), 
      width: double.infinity,
      height: 100,
      child: Center(child: Text(text+'\n Project')),
    );
  }
}