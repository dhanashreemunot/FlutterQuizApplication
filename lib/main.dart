import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.amber.shade600,
        title:  Text("Kids Trivia"),
        centerTitle: true,),
      body: myquiz(),

    ),


  ));
}
_onBasicAlertPressed(context) {
  Alert(
    context: context,
    title: "Done!",
    desc: "You have completed the quiz. Hope you enjoyed it!",
  ).show();
}

class myquiz extends StatefulWidget {
  @override
  _myquizState createState() => _myquizState();
}

class _myquizState extends State<myquiz> {
  @override

  List<String> questions = [
    'Wular lake in Kashmir is the largest fresh water lake in India.',
    "Ostrich's eyes are smaller than its brain.",

    'Red and green lights are used to indicate foul in ice hockey.',
    'Baseball originated in Australia.',
    'The first captain of the first ODI Indian team was Sunil Gavaskar.',
    'Sabir Bhatia was co-founder of Hotmail.',
  'Tipu Sultan signed a secret agreement with Napoleon.',
    'Vedic astrology counts on the solar system.',

    'First ODI (Cricket) in India was played in Ahemadabad.',
    ' Goa is famous for not producing coconut.',
    'Earth Rotation is also called annual motion of the earth',
    "Bellatrix is Harry Potter's mother",
    'The National Security Guards are also known as Black Cat Commandos due to their uniforms',
    'A baby has more bones than an adult.',
    'The five rings on the Olympic flag are interlocking'


  ];
  List<bool> answers = [
    true,
    false,
    false,
    false,
    false,
    true,
    true,
    false,
    true,
    true,
    false,
    false,
    true,
    true,
    true
  ];

  int qNo = 0;
  int value = 0;
  bool click =true;
  bool clicked = true;
  int q =1;
var mytext = '';
var mycolor =Colors.black;
var myicon = Icons.check;
var iconcolor = Colors.black;
var bulbcolor= Colors.black;
var glowcolor = Colors.black;
double myblur=0;
double myspread = 0;
  Widget build(BuildContext context) {
    return Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Question : $q/15',textAlign:TextAlign.left,style: TextStyle(
                      color: Colors.white,fontSize: 20,
                    ),),
                  ),
                ),
               Expanded(child:
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Score : $value/15',textAlign:TextAlign.right,style: TextStyle(
                   color: Colors.white,fontSize: 20,
                 ),),
               ),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                height:50,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular((20)),
                    border: Border.all(
                      color: mycolor,
                      width: 3
                    )
                ),
                child: Center(
                  child: Row(
                    children: [
                      Icon(myicon,color: iconcolor,size: 30,),

                      Text(mytext,style: TextStyle(
                          color: Colors.amber,fontSize: 20
                      ),),
                    ],
                  ),
                ),
              ),
            ),
    Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:100,
                    width:100,
                    decoration: BoxDecoration(

                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: glowcolor,
                            blurRadius:myblur,
                            spreadRadius: myspread,
                          ),
                        ]
                    ),
                  child: Icon(Icons.lightbulb,color: bulbcolor,size: 100,),
    ),
                ),
    ),



            Expanded(
             //flex:2,
              child: Center(
                child: Text(questions[qNo],textAlign:TextAlign.center,style: TextStyle(
                  color: Colors.white,fontSize: 20,
                ),),
              ),
            ),
            Expanded(
              //flex: 3,
              child: Row(
                children: [
                  Expanded(

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FlatButton(
                          color: Colors.green,
                          height: 50,
                          onPressed: (){

                            if(click==true){
                              setState(() {

                                if(answers[qNo]==true){
                                  mytext='Correct!';
                                  myicon = Icons.check;
                                  iconcolor = Colors.lightGreen;
                                  mycolor=Colors.amber;
                                  glowcolor = Colors.amber.shade200;
                                  bulbcolor = Colors.amber.shade100;
                                  myblur = 50;
                                  myspread =5;
                                 value++;
                                }
                                else{
                                  mytext='Wrong!';
                                  mycolor=Colors.amber;
                                  myicon = Icons.close;
                                  iconcolor = Colors.red.shade900;
                                  glowcolor = Colors.red.shade400;
                                  bulbcolor = Colors.red.shade100;
                                  myblur = 50;
                                  myspread =5;
                                }


                              });
                              clicked = false;
                              click = false;
                            }
                            else{

                              print('Only one chance');
                            }

                          },
                          child: Text('True',style: TextStyle(
                            color: Colors.white,fontSize: 20,
                          ),),
                        ),
                      )
                  ),
                  Expanded(

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FlatButton(
                          height: 50,

                          color: Colors.redAccent,
                          onPressed: (){
                            if(clicked == true){
                              setState(() {

                                if(answers[qNo]==false){
                                  mytext='Correct!';
                                  mycolor=Colors.amber;
                                  myicon = Icons.check;
                                  iconcolor = Colors.lightGreen;
                                  glowcolor = Colors.amber.shade200;
                                  bulbcolor = Colors.amber.shade100;
                                  myblur = 50;
                                  myspread =5;
                               value++;

                                }
                                else{
                                  mytext='Wrong!';
                                  mycolor=Colors.amber;
                                  myicon = Icons.close;
                                  iconcolor = Colors.red.shade900;
                                  glowcolor = Colors.red.shade400;
                                  bulbcolor = Colors.red.shade100;
                                  myblur = 50;
                                  myspread =5;
                                }

                                // if(qNo == questions.length-1){
                                //   _onBasicAlertPressed(context);
                                //
                                // }


                              });
                              click = false;
                              clicked = false;
                            }
                            else{

                              print('Only one chance');
                            }

                          },
                          child: Text('False',style: TextStyle(
                            color: Colors.white,fontSize: 20,
                          ),),
                        ),
                      )
                  ),


                ],
              ),
            ),
           GestureDetector(

             onTap: (){
               if(qNo+1<questions.length) {
                 qNo++; //questionNumber+=1
                 q++;

                 setState(() {
                   bulbcolor= Colors.black;
                   glowcolor = Colors.black;
                   myblur=0;
                   myspread = 0;
                   myicon = Icons.check;
                   iconcolor = Colors.black;
                   mytext = '';
                   mycolor = Colors.black;
                   click = true;
                   clicked = true;
                 });
               }
               else if(qNo == questions.length-1){
                 _onBasicAlertPressed(context);

               }

             },

             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 width: 200,
                 height:50,

                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular((20)),
                   color: Colors.amber
                 ),
                 child: Center(
                   child: Text('Next',style: TextStyle(
                     color: Colors.white,fontSize: 20
                   ),),
                 ),
               ),
             ),
           )
          ],
        )
    );
  }
}
