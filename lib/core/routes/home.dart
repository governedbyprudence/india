import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/home";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String,String>> _timelineList = const [
    {"year": "1857", "description": "Indian Rebellion of 1857 against British East India Company rule."},
    {"year": "1885", "description": "Formation of the Indian National Congress (INC), a major political party advocating for India's rights."},
    {"year": "1919", "description": "Jallianwala Bagh massacre in Amritsar, where British troops fired on a crowd of Indian protesters."},
    {"year": "1930", "description": "Civil Disobedience Movement, led by Mahatma Gandhi, demanding self-rule and non-cooperation with British authorities."},
    {"year": "1942", "description": "Quit India Movement launched, demanding an end to British colonial rule."},
    {"year": "1947", "description": "India gains independence from British rule; partition of India and Pakistan."},
    {"year": "1950", "description": "India becomes a republic with the adoption of a new constitution."},
    {"year": "1962", "description": "Sino-Indian War with China over border disputes."},
    {"year": "1965", "description": "India-Pakistan War over the Kashmir region."},
    {"year": "1971", "description": "Indo-Pakistani War resulting in the creation of Bangladesh."},
    {"year": "1974", "description": "India conducts its first successful nuclear test."},
    {"year": "1991", "description": "Economic liberalization and reforms initiated, leading to significant economic growth."},
    {"year": "1998", "description": "India conducts a series of nuclear tests."},
    {"year": "1999", "description": "Kargil War between India and Pakistan."},
    {"year": "2000", "description": "The Atal Bihari Vajpayee government establishes the Golden Quadrilateral project to upgrade road infrastructure."},
    {"year": "2008", "description": "Terrorist attacks in Mumbai (26/11) result in a significant loss of life and tension with Pakistan."},
    {"year": "2014", "description": "Narendra Modi becomes the Prime Minister, leading the BJP government."},
    {"year": "2016", "description": "Demonetization of high-denomination currency notes to curb black money."},
    {"year": "2019", "description": "Government revokes the special status of Jammu and Kashmir."},
    {"year": "2020", "description": "COVID-19 pandemic impacts India's public health and economy."},
  ];

  List<Map<String, String>> _peopleData = [
    {
      "imageUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Subhas_Chandra_Bose_NRB.jpg/800px-Subhas_Chandra_Bose_NRB.jpg",
      'name': 'Subhas Chandra Bose',
      'description':
      'Subhas Chandra Bose, a charismatic and courageous freedom fighter, sought India\'s liberation through armed resistance. He established the Indian National Army (INA) with Japanese support during World War II. Bose believed in a more assertive approach and led from the front, aiming to free India by any means necessary.'
    },
    {
      "imageUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Mahatma-Gandhi%2C_studio%2C_1931.jpg/440px-Mahatma-Gandhi%2C_studio%2C_1931.jpg",
      'name': 'Mahatma Gandhi',
      'description':
      'Mohandas Karamchand Gandhi, known as Mahatma Gandhi, was a pivotal leader in India\'s struggle for independence against British rule. He championed the philosophy of nonviolent resistance, or Satyagraha, which he employed in movements like the Salt March and Quit India Movement. His influence extended beyond India\'s borders, inspiring civil rights and freedom movements worldwide.'
    },
    {
      "imageUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Bhagat_Singh_1929.jpg/640px-Bhagat_Singh_1929.jpg",
      'name': 'Bhagat Singh',
      'description':
      'Bhagat Singh, a young revolutionary, was a symbol of fearlessness and determination in the face of British oppression. He advocated for the overthrow of British rule through radical means. His involvement in the Lahore Conspiracy Case and his ultimate sacrifice made him an enduring inspiration for generations.'
    },
    {
      "imageUrl":"https://upload.wikimedia.org/wikipedia/commons/f/f2/Sardar_patel_%28cropped%29.jpg",
      'name': 'Sardar Patel',
      'description':
      'Vallabhbhai Patel, known as the "Iron Man of India," was a unifying force during the struggle for independence. As an astute statesman, he played a pivotal role in integrating princely states into the newly formed India. Patel\'s determination and leadership contributed to the creation of a united and independent nation.'
    },
    {
      "imageUrl":"https://upload.wikimedia.org/wikipedia/commons/5/5f/Jnehru.jpg",
      'name': 'Jawaharlal Nehru',
      'description':
      'Jawaharlal Nehru, India\'s first Prime Minister, was a prominent leader of the Indian National Congress and a key architect of India\'s post-independence policies. His vision emphasized secularism, democracy, and modernization. Nehru\'s commitment to social justice and progress laid the foundation for the nation\'s growth.'
    },
    {
      "imageUrl":"https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Rani_of_jhansi.jpg/220px-Rani_of_jhansi.jpg",
      'name': 'Rani Lakshmibai',
      'description':
      'Rani Lakshmibai of Jhansi was a valiant warrior queen who led her forces against British colonial rule during the Indian Rebellion of 1857. Her bravery on the battlefield and unwavering commitment to the cause of freedom inspired her contemporaries and continues to inspire generations of Indians.'
    },
    {
      "imageUrl":"https://upload.wikimedia.org/wikipedia/commons/6/6e/A._P._J._Abdul_Kalam.jpg",'name': 'Dr. APJ Abdul Kalam',
      'description':
      'Dr. Avul Pakir Jainulabdeen Abdul Kalam, a visionary scientist and statesman, made indelible contributions to India\'s space and missile programs. Affectionately known as the "Missile Man of India," he served as the 11th President and inspired youth with his emphasis on scientific research, innovation, and societal progress.'
    },
    {
      "imageUrl":"https://upload.wikimedia.org/wikipedia/commons/e/e6/Sir_CV_Raman.JPG",'name': 'Sir C.V. Raman',
      'description':
      'Sir Chandrasekhara Venkata Raman was a Nobel Prize-winning physicist whose groundbreaking discovery of the Raman Effect revolutionized the field of molecular spectroscopy. His work illuminated the behavior of light when passing through different substances, leading to deeper insights into the structure of matter.'
    },
    {
      "imageUrl":"https://wikibio.in/wp-content/uploads/2022/01/Homi-J.-Bhabha-Picture.jpg",
      'name': 'Homi J. Bhabha',
      'description':
      'Dr. Homi Jehangir Bhabha, a trailblazing scientist, is considered the architect of India\'s nuclear program. His contributions to nuclear physics and establishment of the Tata Institute of Fundamental Research (TIFR) laid the foundation for India\'s atomic energy endeavors, propelling the nation into a new era of scientific and technological advancement.'
    },
    {
      "imageUrl":"https://cdn.britannica.com/98/239498-050-C61D39D6/Vikram-Sarabhai-Indian-physicist-and-industrialist.jpg",
      'name': 'Dr. Vikram Sarabhai',
      'description':
      'Dr. Vikram Sarabhai, often referred to as the "Father of the Indian Space Program," was a visionary scientist who played a seminal role in founding the Indian Space Research Organisation (ISRO). His commitment to space technology for societal development, satellite communication, and meteorological studies transformed India\'s capabilities in space exploration.'
    },
    {
      "imageUrl":"https://upload.wikimedia.org/wikipedia/commons/7/70/Srinivasa_Ramanujan_-_OPC_-_2_%28cleaned%29.jpg",'name': 'Dr. Srinivasa Ramanujan',
      'description':
      'Dr. Srinivasa Ramanujan, a prodigious mathematician, produced unparalleled contributions to number theory, mathematical analysis, and infinite series. His intuitive insights into mathematics, often coming through divine inspiration, continue to be foundational in modern mathematics and inspire mathematicians worldwide.'
    },
    {
      "imageUrl":"https://res.cloudinary.com/dkplc2mbj/image/upload/v1611830912/ljp_34788df136.jpg",
      'name': 'Lala Lajpat Rai',
      'description':
      'Lala Lajpat Rai, commonly known as Punjab Kesari, was a prominent freedom fighter who played a vital role in the struggle against British colonial rule. He was a strong advocate of Swadeshi movement and fought for the rights and welfare of Indian farmers and laborers.'
    },
    {
      "imageUrl":"https://cdn.britannica.com/07/155907-004-F3FD4D5B/Bal-Gangadhar-Tilak.jpg",
      'name': 'Bal Gangadhar Tilak',
      'description':
      'Bal Gangadhar Tilak, also known as Lokmanya Tilak, was a fierce nationalist and freedom fighter. He coined the famous slogan "Swaraj is my birthright and I shall have it." Tilak advocated for self-reliance and unity among Indians to achieve independence.'
    },
    {
      "imageUrl":"https://www.constitutionofindia.net/wp-content/uploads/2023/01/G-Durgabai.jpg",'name': 'Durgabai Deshmukh',
      'description':
      'Durgabai Deshmukh was a prominent social worker, freedom fighter, and politician. She was a tireless advocate for women\'s rights, education, and social reforms. Her efforts led to the establishment of the Andhra Mahila Sabha and the All India Women\'s Conference.'
    },
    {
      "imageUrl":"https://upload.wikimedia.org/wikipedia/commons/d/d1/Rabindranath_Tagore.jpg",
      'name': 'Rabindranath Tagore',
      'description':
      'Rabindranath Tagore was a multifaceted personality, renowned poet, philosopher, and artist. He composed the Indian national anthem "Jana Gana Mana." Tagore\'s writings and teachings emphasized universal values, cultural exchange, and the interconnectedness of humanity.'
    },
    {
      "imageUrl":"https://upload.wikimedia.org/wikipedia/commons/a/a7/Chandrasekhar_Azad.jpg",'name': 'Chandrasekhar Azad',
      'description':
      'Chandrasekhar Azad, a fearless revolutionary, played a key role in the Kakori Conspiracy and other acts of resistance against British rule. He believed in armed struggle and was committed to the cause of complete independence for India.'
    },
    {
      "imageUrl":"https://thelogicalindian.com/h-upload/2022/02/13/212257-untitled-design-2022-02-13t112812079.jpg",'name': 'Sarojini Naidu',
      'description':
      'Sarojini Naidu, also known as the "Nightingale of India," was a prominent freedom fighter and poet. She actively participated in the Civil Disobedience Movement and was the first Indian woman to become the President of the Indian National Congress.'
    },
    {
      "imageUrl":"https://cdn.britannica.com/89/239489-050-E623A3B6/Islamic-theologian-Abul-Kalam-Azad-also-called-Maulana-Abul-Kalam-Azad-or-Maulana-Azad.jpg?w=400&h=300&c=crop",'name': 'Maulana Abul Kalam Azad',
      'description':
      'Maulana Abul Kalam Azad was a scholar, freedom fighter, and prominent leader of the Indian National Congress. He played a significant role in the Quit India Movement and later became the first Minister of Education in independent India.'
    },
    {
      "imageUrl":"https://upload.wikimedia.org/wikipedia/en/b/b1/Photo_of_Homai_Vyarawalla.jpg",
      'name': 'Homai Vyarawalla',
      'description':
      'Homai Vyarawalla, India\'s first female photojournalist, documented the events of the Indian freedom struggle through her photographs. Her work provides a visual record of historic moments and the contributions of various leaders and activists.'
    },
    {
      "imageUrl":"https://upload.wikimedia.org/wikipedia/commons/a/a1/Indira_Gandhi_official_portrait.png",
      'name': 'Indira Gandhi',
      'description':
      'Indira Gandhi, the daughter of Jawaharlal Nehru, was India\'s first woman Prime Minister. She led the country through significant social and political changes. Her leadership during the 1971 war with Pakistan and her focus on nuclear energy marked her tenure. She faced both praise and criticism for her policies.',
      'imageURL': 'https://example.com/indira_gandhi.jpg'
    },
    {
      "imageUrl":"https://upload.wikimedia.org/wikipedia/commons/6/63/Ajit_Kumar_Doval.jpg",
      'name': 'Ajit Doval',
      'description':
      'Ajit Doval is a former intelligence officer and the current National Security Advisor of India. He played a crucial role in various covert operations and strategic planning for the country\'s security. His efforts in counter-terrorism and intelligence have earned him recognition for his contributions to national security.',
      'imageURL': 'https://example.com/ajit_doval.jpg'
    },
    {
      "imageUrl":"https://upload.wikimedia.org/wikipedia/commons/1/19/Field_marshal_SHFJ_Manekshaw.jpg",
      'name': 'Field Marshal Sam Manekshaw',
      'description':
      'Field Marshal Sam Manekshaw, popularly known as Sam Bahadur, was the Chief of the Army Staff of the Indian Army during the 1971 war with Pakistan. His leadership and strategic acumen played a pivotal role in India\'s victory in the conflict, resulting in the creation of Bangladesh. He was renowned for his straightforwardness and charisma, earning the respect of the entire nation.',
      'imageURL': 'https://example.com/sam_manekshaw.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar:AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Stack(
              children: [
                Positioned.fill(
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )),
                TabBar(
                  indicatorColor: Colors.white,
                  padding: const EdgeInsets.all(20),
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0,1),
                        blurRadius: 3,
                        spreadRadius: 2,
                        color: Colors.grey[300]!
                      )
                    ],
                    border: Border.all(width: 0.5,color: Colors.deepOrange)
                  ),
                  tabs: const [
                    Tab(
                      child: Icon(Icons.timeline),
                    ),Tab(
                      child: Icon(Icons.person),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _timeline(),
            _people()
          ],
        ),
      ),
    );
  }
  Widget _peopleTile(Map data,int index){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonViewPage()))
      },
      child: Container(
        height: 100,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow:[
              BoxShadow(
                offset: Offset(0,1),
                blurRadius: 2,
                spreadRadius: 1,
                color: Colors.grey[300]!,
              )
            ],
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(flex:2,
                child: Hero(
                  tag: data["name"],
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                            data["imageUrl"]??"",

                        ),
                        fit: BoxFit.fitWidth
                      )
                    ),
                  ),
                )
            ),
            Expanded(flex: 6,child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(data["name"],style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
              ],
            )),
          ],
        ),
      ),
    );
  }
  Widget _people(){
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow:[
            BoxShadow(
              offset: Offset(0,5),
              blurRadius: 3,
              spreadRadius: 2,
              color: Colors.black,
            )
          ],
          borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
      ),
      child: ListView.builder(
          itemCount: _peopleData.length,
          itemBuilder: (context,index)=>_peopleTile(_peopleData[index],index)),
    );
  }
  Widget _leftTile(Map data,int index){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 190,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const SizedBox(width: 20,),
              CircleAvatar(backgroundColor: Colors.orange,child: Text("${index + 1}",style: TextStyle(color: Colors.white),),),
              const SizedBox(width: 20,),
              Text(data["year"],style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(width: 20,),
              Expanded(child: Divider(color: Colors.deepOrange,)),
              const SizedBox(width: 20,),
            ],
          ),
          Expanded(flex: 6,child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:[
                  BoxShadow(
                    offset: Offset(0,1),
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: Colors.grey[300]!,
                  )
                ],
                borderRadius: BorderRadius.circular(10)
            ),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(left: 20,right: 60,top: 10,bottom: 10),
            alignment: Alignment.centerLeft,
            child: Text(data["description"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
          )),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(color: Colors.green[900],),
          )),
        ],
      ),
    );
  }
  Widget _rightTile(Map data,int index){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 190,
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 20,),
              Expanded(child: Divider(color: Colors.green[900],)),
              const SizedBox(width: 20,),
              Text(data["year"],style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(width: 20,),
              CircleAvatar(backgroundColor: Colors.green,child: Text("${index + 1}",style: TextStyle(color: Colors.white),),),
              const SizedBox(width: 20,),
            ],
          ),
          Expanded(flex: 6,child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:[
                  BoxShadow(
                    offset: Offset(0,1),
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: Colors.grey[300]!,
                  )
                ],
                borderRadius: BorderRadius.circular(10)
            ),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(left: 20,right: 60,top: 10,bottom: 10),
            alignment: Alignment.centerRight,
            child: Text(data["description"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
          )),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(color: Colors.deepOrange),
          )),
        ],
      ),
    );
  }
  Widget _timeline(){
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow:[
          BoxShadow(
            offset: Offset(0,5),
            blurRadius: 3,
            spreadRadius: 2,
            color: Colors.black,
          )
        ],
        borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
      ),
      child: ListView.builder(
          itemCount: _timelineList.length,
          itemBuilder: (context,index){
            if(index%2==0){
              return _leftTile(_timelineList[index],index);
            }
            else{
              return _rightTile(_timelineList[index],index);
            }
          }),
    );
  }
}
