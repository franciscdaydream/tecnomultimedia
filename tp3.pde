PImage titulo;
PImage milo;
PImage cartel1;
PImage cartela;
PImage cartelb;
PImage cartelc;
PImage terreno;
PImage popup;
PFont fuente;
int frames;
int milox = 480;
int miloy = 630;
boolean pestania = false;
void setup () {
  size(1000, 700);
  rectMode(CENTER);
  fuente = loadFont("fuentegeneral.vlw");
  titulo = loadImage("pantalla de titulo.png");
  milo = loadImage("milo.png");
  terreno = loadImage("terreno de jueg.png");
  cartel1 = loadImage("cartel piedra.png");
  cartela = loadImage("cartel piedra A.png");
  cartelb = loadImage("cartel piedra B.png");
  cartelc = loadImage("cartel piedra C.png");
  popup = loadImage("cartel pestaña.png");
  background(0);
  textFont(fuente);
  textSize(23);
  image (titulo, 0, 0, 1000, 700);
  fill(226, 210, 105);
  text("Precione Espacio para empezar", 240, 550);
}
void draw () {


  println("eje x " + mouseX +" eje y " + mouseY);
  frames = frameCount;
  if (keyPressed) {
    if (key==' ') {
      background(21, 12, 20);
      textSize(18);
      text("Para salir del laberinto matematico", 250, 100);
      text(" debes guiar a Milo por el camino correcto", 200, 150);
      image(cartel1, 400, 140, 200, 200);
      text("toca las señales de piedra para obtener pistas", 190, 370);
      text("y elige la opcion que creas correcta", 250, 420);
      image(cartela, 230, 420, 150, 150);
      image(cartelb, 415, 420, 150, 150);
      image(cartelc, 600, 420, 150, 150);
      text("preciona ENTER para comenzar la aventura", 210, 600);
    }

    if (key==ENTER) {
      background(0);
      image(terreno, 0, 0, 1000, 700);
      image(cartela, 30, 110, 150, 150);
      image(cartelb, 300, 110, 150, 150);
      image(cartelc, 580, 110, 150, 150);
      image(cartel1, 430, 370, 150, 150);
      image(milo, milox,miloy,120,120);

    }
        if(keyCode==UP){
    miloy= miloy+2;
      }
   if(keyCode==DOWN){
    miloy= miloy-2;
      }
   if(keyCode==LEFT){
    milox= milox-2;
      }
   if(keyCode==RIGHT){
    milox= milox+2;
      }  
}
  
  if (pestania){
    image(popup,0,520,1000,250);
    textSize(15);
    fill(32);
    text("9+6/1x60", 450,620);
    text("Camino A= 0    Camino B=60    Camino C=900",200,670);
  }
}
void mousePressed(){
   if ((mouseX > 430) && (mouseX < 430+150) && (mouseY > 370) && (mouseY < 370+100)) {
pestania = true;
 }else{
   pestania = false;
   }
   }
