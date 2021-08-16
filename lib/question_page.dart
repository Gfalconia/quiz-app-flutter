import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/results.dart';
import '../final_page.dart';
import 'dart:async';
import './answer.dart';

class QuestionPage extends StatefulWidget {
  QuestionPage({Key? key}) : super(key: key);
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

int currentQuestion = 0;
int questionNumber = 1;
int trueAnswersCounter = 0;
bool disabledMagicButton = false;
bool activeMagicButton = true;
var answers1 = [answer1, answer2, answer3, answer4];

var answersArray = [
  [answer1, answer2, answer3, answer4],
  [answer5, answer6, answer7, answer8],
  [answer9, answer10, answer11, answer12],
  [answer13, answer14, answer15, answer16],
  [answer17, answer18, answer19, answer20],
  [answer21, answer22, answer23, answer24],
  [answer25, answer26, answer27, answer28]
];

var answer1 = new Answer('Марк Твен', false);
var answer2 = new Answer('Чарльз Доджсон', true);
var answer3 = new Answer('Льюис Кэрролл', false);
var answer4 = new Answer('Энтони Троллоп', false);

var answer5 = new Answer('Врубель Михаил Александрович', false);
var answer6 = new Answer('Васнецов Виктор Михайлович', true);
var answer7 = new Answer('Айвазовский Иван Константинович', false);
var answer8 = new Answer('Есаков Ермолай Иванович', false);

var answer9 = new Answer('Марс', false);
var answer10 = new Answer('Сатурн', true);
var answer11 = new Answer('Земля', false);
var answer12 = new Answer('Юпитер', false);

var answer13 = new Answer('Джиббинг', false);
var answer14 = new Answer('Скибоб', true);
var answer15 = new Answer('Керлинг', false);
var answer16 = new Answer('Зорбинг', false);

var answer17 = new Answer('Французкую', false);
var answer18 = new Answer('Русскую', true);
var answer19 = new Answer('Итальянскую', false);
var answer20 = new Answer('Немецкую', false);

var answer21 = new Answer('1961', false);
var answer22 = new Answer('1969', true);
var answer23 = new Answer('1984', false);
var answer24 = new Answer('1992', false);

var answer25 = new Answer('Инструментов', false);
var answer26 = new Answer('Нот', true);
var answer27 = new Answer('Театров', false);
var answer28 = new Answer('Рок-групп', false);

var question11 = new Question(
    "Настоящее имя автора произведения «Приключения Алисы в Стране Чудес»",
    "lib/assets/images/1.jpg",
    answer1,
    "4 июля 1865 г. вышло первое издание книги Льюиса Кэрролла «Приключения Алисы в Стране Чудес» Однажды на лодочной прогулке 10-летняя Алиса Лидделл попросила своего учителя математики Чарльза Доджсона сочинить чудесную историю для нее и ее сестер Эдит и Лорины. Доджсон, которому и раньше приходилось рассказывать детям декана Лидделла сказки, с готовностью согласился. На этот раз он поведал сестрам о приключениях маленькой девочки в Подземной Стране, куда она попала, провалившись в нору Белого Кролика. Главная героиня очень напоминала саму Алису, а некоторые второстепенные персонажи – ее сестер Лорину и Эдит. История так понравилась Алисе Лидделл, что она попросила учителя записать ее. Доджсон обещал, но все равно напоминать пришлось несколько раз. Наконец он выполнил просьбу Алисы и подарил ей рукопись, которая называлась «Приключения Алисы под землей». Позже автор решил переписать книгу. Весной 1863 года он отправил её на рецензию своему другу Джорджу Макдональду. Новую версию книги Доджсон преподнес своей любимице на Рождество 1863 года. 4 июля 1865 года его книга, опубликованная под псевдонимом Льюис Кэрролл, вышла в британском издательстве «Macmillan and Co». Первое издание книги, которая называлась «Приключения Алисы в Стране чудес от Льюиса Кэрролла» (англ. Alice’s Adventures in Wonderland by „Lewis Carroll“), проиллюстрировал художник Джон Тенниэл, чьи иллюстрации сегодня считаются классическими. Вторая книга – «Алиса в Зазеркалье» – появилась шестью годами позже, в 1871 году. Обе сказки, которым уже более 100 лет, популярны и поныне, а рукописный экземпляр, который Доджсон подарил когда-то Алисе Лидделл, хранится в Британской Библиотек");

var question12 = new Question(
    "Кто автор картины 'три богатыря'?",
    "lib/assets/images/2.jpg",
    answer1,
    "Виктор Васнецов был известным мастером бытовой и исторической живописи — его картины приобретали коллекционеры Павел Третьяков и Савва Мамонтов. Полотно Васнецова «Богатыри» стало одним из первых обращений к былинному сюжету в истории русской живописи. Кроме написания картин Васнецов делал иллюстрации к книгам, создавал эскизы архитектурных сооружений и расписывал храмы в разных городах России.");

var question13 = new Question(
    "Какая из планет является пятой по удаленности от Солнца?",
    "lib/assets/images/3.jpg",
    answer1,
    "Ну это очевидно");

var question14 = new Question(
    "Какой это вид спорта?",
    "lib/assets/images/4.jpg",
    answer1,
    "Вечный спор о преимуществах горных лыж перед сноубордом может получить неожиданный поворот. Ведь в игру вступает скибоб. Этот вид спорта можно отнести не только к экстремальным, но и невероятно зрелищным. Спортсмены спускаются по снежному склону на сноубайках, которые отдаленно напоминают велосипеды. Правда, вместо колес, этот спортивный болид оснащен широкой лыжей. Как и многие другие необычные виды спорта, скибоб имеет серьезную историю за плечами. Таким образом покорять снежные склоны смельчаки начали более 100 лет назад. Правда, со временем интерес к этому виду спорта поутих, но спустя 50 лет он снова стал популярен среди экстремалов. Сегодня в скибобе есть свои стандарты и правила, а для спуска спортсмены используют заводской инвентарь. В мире 3 завода выпускает сноубайки. Неудивительно, что все они расположены в странах, где жители не понаслышке знают о суровых снежных зимах. Так, можно на выбор стать обладателем швейцарского, канадского или австрийского сноубайка. Профессионалы пророчат скибобу большое будущее, возможно, даже в Олимпийской программе.");

var question15 = new Question(
    "В какую национальную кухню входит Бефстроганов?",
    "lib/assets/images/5.jpg",
    answer1,
    "Первый рецепт «говядины по-строгановски, с горчицею» был напечатан в книге «Подарок молодым хозяйкам» Елены Молоховец в 1871 г.[1][2][3]. Блюдо названо в честь графа Александра Григорьевича Строганова (1795—1891). По основной версии, блюдо создал служивший у Строганова французский повар Андре Дюпон.[4]. По другой версии, А. Г. Строганов, как и многие вельможи того времени, будучи весьма состоятельным человеком, держал в Одессе так называемый «открытый стол», на который мог зайти любой образованный и прилично одетый человек. Блюдо, вероятно, подавалось и для таких открытых столов — во-первых, в силу удобства приготовления, выдержанности стандарта блюда, во-вторых, удобного деления на порции и в-третьих, в то же время вкусного. Один из поваров графа удачно объединил технологию французской кухни (обжаривание мяса, его подача с соусом) с приёмами русской кухни (соус подаётся не отдельно, а как русская подливка, вместе с мясом)[5]. Блюдо получило широчайшее распространение в мире: его подают в самых разных заведениях общественного питания: от ресторанов до столовых. После Второй мировой войны бефстроганов вошёл в номенклатуру международной ресторанной кухни как русское блюдо. По аналогии с этим блюдом готовят печень по-строгановски.");

var question16 = new Question(
    "В каком году впервые были применены в сети ARPANET принципы, по которым строится Интернет?",
    "lib/assets/images/6.jpg",
    answer1,
    "Интерне́т[1] (англ. Internet, МФА: [ˈɪn.tə.net]) — всемирная система объединённых компьютерных сетей для хранения и передачи информации[2]. Раньше упоминался как Всемирная сеть и Глобальная сеть, а также просто Сеть. Построена на базе стека протоколов TCP/IP[3]. На основе Интернета работает Всемирная паутина (World Wide Web, WWW) и множество других систем передачи данных. К началу 2020 года число пользователей достигло 4,5 млрд человек, что составляет более 50 % от всех жителей планеты Земля. Во многом это было обусловлено широким распространением сотовых сетей с доступом в Интернет стандартов 3G, 4G и 5G, развитием социальных сетей и удешевлением стоимости интернет-трафика[4]. уперуспешное развитие Интернета во многом объясняется также тем, что во второй половине 2010-х годов мировая Сеть фактически стала полномасштабной заменой всем классическим инструментам получения информации, связи и коммуникации. Все «классические» СМИ — телевидение, радио и печатные издание — имеют полноценные онлайн-версии, кроме того, существует безграничное множество интернет-СМИ и блог-платформ, соединяющих все признаки различных форм коммуникации, делая контент более «живым» и менее зависимым от штампов. На сегодняшний день самыми популярными интернет-ресурсами являются социальные сети (facebook, instagram, twitter, ВКонтакте, Одноклассники), мессенджеры (WhatsApp, Viber, Telegram), а также энциклопедия Википедия и видеохостинг youtube. Последний часто называют «новым телевидением», «заменой телевидению» и т. д. В период пандемии коронавируса COVID-19 широкую популярность обрели различные сервисы, позволяющие хотя бы отчасти восполнить привычный образ жизни (службы доставки, интернет-магазины, онлайн-кинотеатры, программы для организации видеоконференций и многое другое.).");

var question17 = new Question(
    "Названия чего изучают на уроках сольфеджио?",
    "lib/assets/images/7.jpg",
    answer1,
    "ольфе́джио (итал. solfeggio от названия нот «соль» и «фа») — многозначный музыкальный термин, означающий: учебную дисциплину, предназначенную для развития музыкального слуха и музыкальной памяти, включающую сольфеджирование (сольмизацию), музыкальный диктант, анализ на слух[1]; сборники упражнений для одно- или многоголосного сольфеджирования или анализа на слух[источник не указан 4029 дней]; специальные вокальные упражнения для развития голоса, называемые также вокализами[1]; Согласно Энциклопедическому словарю Брокгауза и Евфрона, сольфеджио — начальные вокальные упражнения в чтении нот без текста. При пении мелодии сольфеджио каждая её нота называется. Сольфеджио как упражнения располагаются в сборнике с постепенным переходом от более лёгких к более трудным. Сольфеджио пишутся во всех мажорных и минорных тональностях и во всех ключах для разных голосов, как женских, так и мужских. Преимущественно пишутся сольфеджио одноголосные, но бывают двух- и трёхголосные, цель которых состоит в приучении поющего петь самостоятельно свою партию, не сбиваясь вследствие исполнения остальных партий другими голосами. В консерваториях на сольфеджио обращается особое внимание как на вернейший способ развития слуха и способности быстро и без ошибок читать музыкальную нотацию[2].");

var questions = [
  question11,
  question12,
  question13,
  question14,
  question15,
  question16,
  question17
];

var question2 = {
  "question": "Кто автор картины 'три богатыря'?",
  "picture": "lib/assets/images/2.jpg",
  "answer1": 'Врубель Михаил Александрович',
  "answer2": 'Васнецов Виктор Михайлович',
  "answer3": 'Есаков Ермолай Иванович',
  "answer4": 'Айвазовский Иван Константинович',
  "true": "2",
};
var question3 = {
  "question": "Какая из планет является пятой по удаленности от Солнца?",
  "picture": "lib/assets/images/3.jpg",
  "answer1": 'Марс',
  "answer2": 'Сатурн',
  "answer3": 'Земля',
  "answer4": 'Юпитер',
  "true": "2"
};
var question4 = {
  "question": "Какой это вид спорта?",
  "picture": "lib/assets/images/4.jpg",
  "answer1": 'Джиббинг',
  "answer2": 'Скибоб',
  "answer3": 'Керлинг',
  "answer4": 'Зорбинг',
  "true": "2"
};
var question5 = {
  "question": "В какую национальную кухню входит Бефстроганов?",
  "picture": "lib/assets/images/5.jpg",
  "answer1": 'Французкую',
  "answer2": 'Русскую',
  "answer3": 'Итальянскую',
  "answer4": 'Немецкую',
  "true": "2"
};
var question6 = {
  "question":
      "В каком году впервые были применены в сети ARPANET принципы, по которым строится Интернет?",
  "picture": "lib/assets/images/6.jpg",
  "answer1": '1961',
  "answer2": '1969',
  "answer3": '1984',
  "answer4": '1992',
  "true": "2"
};
var question7 = {
  "question": "Названия чего изучают на уроках сольфеджио?",
  "picture": "lib/assets/images/7.jpg",
  "answer1": 'Инструментов',
  "answer2": 'Нот',
  "answer3": 'Театров',
  "answer4": 'Рок-групп',
  "true": "2"
};

class _QuestionPageState extends State<QuestionPage> {
  var counter = 0.0;
  late Timer _timer;
  int _start = 0;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        _start++;
      });
    });
  }

  @override
  void initState() {
    currentQuestion = 0;
    questionNumber = 1;
    trueAnswersCounter = 0;
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 30,
            backgroundColor: Colors.white,
            leading: IconButton(
              iconSize: 20,
              icon: const Icon(Icons.close),
              color: Colors.blue,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Row(children: [
              Expanded(
                  child: LinearProgressIndicator(
                value: counter,
              )),
              Padding(
                  padding: EdgeInsets.only(left: 15, right: 5),
                  child: Text(
                    "$_start",
                    style: TextStyle(color: Colors.blue),
                  ))
            ])),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //Padding(padding: EdgeInsets.only(top: 50)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Card(
                    //elevation: 18.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Image(
                        fit: BoxFit.contain,
                        height: 300.0,
                        image: AssetImage(questions[currentQuestion].image)),
                    clipBehavior: Clip.antiAlias,
                    margin: EdgeInsets.all(8.0),
                  ),
                  Row(
                    children: [
                      Visibility(
                          visible: disabledMagicButton,
                          child: Expanded(
                              child: IconButton(
                            iconSize: 30,
                            icon: const Icon(Icons.auto_fix_high_outlined),
                            color: Colors.grey,
                            onPressed: () {},
                          ))),
                      Visibility(
                          visible: activeMagicButton,
                          child: Expanded(
                              child: IconButton(
                            iconSize: 30,
                            icon: const Icon(Icons.auto_fix_high_outlined),
                            color: Colors.blue,
                            onPressed: () {
                              setState(() {
                                activeMagicButton = false;
                                disabledMagicButton = true;
                                var i = 0;
                                answersArray[currentQuestion]
                                    .forEach((element) {
                                  if (answersArray[currentQuestion][i]
                                          .trueAnswer !=
                                      true) {
                                    answersArray[currentQuestion].removeAt(i);
                                    i++;
                                  } else {
                                    i++;
                                  }
                                });
                              });
                            },
                          ))),
                      Expanded(
                          child: IconButton(
                        iconSize: 30,
                        icon: const Icon(Icons.menu_book),
                        color: Colors.blue,
                        onPressed: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Информация'),
                            content: SingleChildScrollView(
                                child: Text(
                                    questions[currentQuestion].information)),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                  //Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Flexible(
                      child: Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: Text(
                            questions[currentQuestion].question,
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          )))
                  //])
                ],
              ),
              // Padding(
              //     padding: EdgeInsets.all(10),
              //     child: ClipRRect(
              //         borderRadius: BorderRadius.circular(10.0),
              //         child: Image(
              //             image: AssetImage(
              //                 questions[currentQuestion]["picture"].toString())))),
              Container(
                  height: 400,
                  child: ListView.builder(
                      itemCount: answersArray[currentQuestion].length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    child: OutlinedButton(
                                      child: Text(answersArray[currentQuestion]
                                              [index]
                                          .answerTitle),
                                      onPressed: () {
                                        counter += 0.15;
                                        setState(() {
                                          if (questionNumber <
                                              questions.length) {
                                            currentQuestion += 1;
                                            questionNumber += 1;
                                            if (answersArray[currentQuestion]
                                                    [index]
                                                .trueAnswer) {
                                              trueAnswersCounter += 1;
                                            }
                                          } else {
                                            Navigator.pushNamed(
                                              context,
                                              FinalPage.routeName,
                                              arguments: Results(
                                                'Время затрачено: ' +
                                                    _start.toString(),
                                                'Правильных ответов: ' +
                                                    trueAnswersCounter
                                                        .toString(),
                                              ),
                                            );
                                          }
                                        });
                                      },
                                    )))
                          ],
                        );
                      })),
            ],
          ),
        ));
  }
}
