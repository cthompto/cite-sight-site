class TextDoc {

  String url;
  String[] theText;
  int line1 = int(random(54));
  float x = 275;
  float y = 25;
  float y2 = int((height*.30)+25);
  float y3 = int((height*.60)+25);
  int linespacing = 20;
  
TextDoc(String u) { 
    url = u;
    theText = new String[0];
    textAlign(LEFT);
    textFont(Georgia);
  }

void loadTextfile() {
    theText = loadStrings(url);
    println("there are " + theText.length + " lines");
  } 

void leftDisplay1() {
    if (frameCount == 1) {
      line1 *= 10;
    }
    if (second() % 3 == 0) {
      x+= random(-.25,.25);    
      y+= random(-.25,.25);
    }
    for (int i=0; i<9; i++) { 
      text(theText[line1+(i)], x, y+(linespacing*i));
      //println(line1+(i));
    }
    if (second() > int(56)){
      line1 = int(random(54));
      line1 *= 10;
    }
    x = constrain(x, 225, 325);
    y = constrain(y, 1, 100);
  }  

void leftDisplay2() {
    if (frameCount == 1) {
      line1 *= 10;
    }
    if (second() % 3 == 0) {
      x+= random(-.25,.25);   
      y2+= random(-.25,.25);
    }
    for (int i=0; i<9; i++) { 
      text(theText[line1+(i)], x, y2+(linespacing*i));
     // println(line1+(i));
    }
    if (second() > int(56)){
      line1 = int(random(54));
      line1 *= 10;
    }
    x = constrain(x, 225, 325);
    y2 = constrain(y2, int((height*.3)-25), int((height*.3)+75));
  }  

void leftDisplay3() {
    if (frameCount == 1) {
      line1 *= 10;
    }
    if (second() % 3 == 0) {
      x+= random(-.25,.25);     //easy jitter
      y3+= random(-.25,.25);
    }
    for (int i=0; i<9; i++) { 
      text(theText[line1+(i)], x, y3+(linespacing*i));
      //println(line1+(i));
    }
    if (second() > int(56)){
      line1 = int(random(54));
      line1 *= 10;
    }
    x = constrain(x, 225, 325);
    y3 = constrain(y3, int((height*.6)-25), int((height*.6)+75));
  }  

void footnote1() {
    int footnote1 = (line1 + 9);
    text(theText[footnote1], 275, (height - 50));
  }

void footnote2() {
    int footnote1 = (line1 + 9);
    text(theText[footnote1], 275, (height - 30));
  }

void footnote3() {
    int footnote1 = (line1 + 9);
    text(theText[footnote1], 275, (height - 10));
  }
}
