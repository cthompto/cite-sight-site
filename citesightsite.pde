// Wall text for Cite/Sight/Site 2018
// Chelsea Thompto

String[] title = new String[16];
int title1 = int(random(15));
PFont Georgia;

TextDoc text1;
TextDoc text2;
TextDoc text3;

void setup(){

  fullScreen(P2D);
  noCursor();
  background(0);
  frameRate(30);
  smooth(2);
  Georgia = createFont("Georgia.tff", 11);
  text1 = new TextDoc("file.txt");
  text2 = new TextDoc("file.txt");
  text3 = new TextDoc("file.txt");
  text1.loadTextfile();
  text2.loadTextfile();
  text3.loadTextfile();
  
  title[0] = "sight";
  title[1] = "cite";
  title[2] = "site";
  title[3] = "sight/cite";
  title[4] = "sight/site";
  title[5] = "sight/cite/site";
  title[6] = "sight/site/cite";
  title[7] = "cite/sight";
  title[8] = "cite/site";
  title[9] = "cite/sight/site";
  title[10] = "cite/site/sight";
  title[11] = "site/cite";
  title[12] = "site/sight";
  title[13] = "site/cite/sight";
  title[14] = "site/sight/cite";
  title[15] = "";
}

void draw(){
  background(0);
  textAlign(LEFT);
  textFont(createFont("georgia", 16));
  text1.leftDisplay1();
  text1.footnote1();
  text2.leftDisplay2();
  text2.footnote2();
  text3.leftDisplay3();
  text3.footnote3();
  
  textAlign(CENTER);
  textFont(createFont("georgia", 44));
  text(title[title1], (width*.75), (height/3));
  
  if (second() % int(5) == 0){
   title1 = int(random(16));
  }
  
  textFont(createFont("georgia", 20));
  text("Chelsea Thompto", (width*.75), (height/3)+40);
  
}
