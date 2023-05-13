int oscuro = 0;
int transicion = 0;
PImage astel0;
PImage astel1;
PImage astel2;
PImage astel3;
PImage asteladios;
PImage noastel0;
PImage noastel1;
PImage flompy;
PFont fuente;
PFont fuentetitulo;
int botonx = 270;
int botony = 350;
int botonw = 300;
int botonh = 50;
int botonx1 = 410;
int botony1 = 100;
int botonw1 = 150;
int botonh1 = 100;
boolean botonI = false;
boolean botonII = false;
void setup() {
  size(640, 480);
  astel0= loadImage("astel0.jpg");
  astel1= loadImage("astel1.jpg");
  astel2= loadImage("astel2.jpg");
  astel3= loadImage("astel3.jpg");
  noastel0= loadImage("noastel0.jpg");
  noastel1= loadImage("noastel1.jpg");
  asteladios= loadImage("asteladios.jpg");
  flompy= loadImage("flompy.jpg");
  fuente= loadFont("fuentegeneral.vlw");
  fuentetitulo= loadFont("titulofuente.vlw");
}
void draw() {
  println(transicion);
  colorMode(HSB);
  background(192, 66, 79);
  println("eje x " + mouseX +" eje y " + mouseY);
  fill(random(0, 360), 100, 600);
  textFont(fuentetitulo);
  textSize(50);
  text("Mi gato se llama:", 130, 150 );
  fill(190);
  textFont(fuente);
  textSize(80);
  text("Astel", 250, 250);
  fill(60);
  quad(260, 330, 410, 330, 410, 400, 260, 400);
  fill(20);
  textSize(30);
  text("Comenzar", botonx+5, botony+25);

  if ((mouseX > botonx) && (mouseX < botonx+botonw) && (mouseY > botony) && (mouseY < botony+botonh)) { //mostrar seleccion
    fill(255);
  } else {
    fill(150);
  }
  textSize(30);
  text("Comenzar", botonx, botony+20);

  if (botonI) {
    transicion++;
  }
  if (transicion>20 && transicion<620) {
    fill(192, 66, 20);
    rect(0, 0, 640, 480);
    fill(255);
    textSize(40);
    text("Este es mi gato Astel", 50, 50);
    image(astel0, 50, 90, 250, 300);
    textSize(20);
    text("Edad : 6 meses", 310, 120);
    text("Estado: adoptado y mimado", 310, 150);
    text("Apodos: chiquitito, enano, salamin", 310, 180);
    text("Gordo bonito, bebe, niño mio & Pastel.", 310, 210);
    text("Como podran ver, es un gato de raza...", 310, 240);
    textSize(30);
    text("Raza GATO", 310, 280);
    textSize(20);
    text(" y su rasgo mas notorio", 310, 310);
    fill(125);
    textFont(fuentetitulo);
    textSize(50);
    text("es GRIS", 310, 370);
    textFont(fuente);
    fill(255);
    textSize(15);
    text("(segun su ficha medica es gris acero)", 50, 410);
  }
  if (transicion>600 && transicion<1020) {
    fill(150, 66, 20);
    rect(0, 0, 640, 480);
    fill(255);
    textSize(20);
    text("Le gusta mucho dormir encima mio", 50, 50);
    textSize(15);
    text("ha de ser de sus pasatiempos favoritos ademas de dormir en la cama o jugar", 50, 440);
    image(astel1, 50, 70, 250, 350);
    image(astel2, 350, 70, 250, 350);
  }
  if (transicion>1000 && transicion<1620) {
    fill(250, 66, 40);
    rect(0, 0, 640, 480);
    fill(255);
    textSize(20);
    text("Si bien Astel es un gato y es gris, no debe confundirse con otros", 50, 50);
    text("seres de color gris o de raza gato", 50, 70);
    image(noastel0, 70, 120, 270, 220);
    image(noastel1, 370, 120, 220, 220);
    textSize(15);
    text("(Es gato pero no gris)", 70, 100);
    text("(Es gris pero no gato)", 370, 100);
    textSize(25);
    text("Dos claros (y tiernos) ejemplos de no-Astel(es)", 50, 380);
    textSize(20);
    text("y sin mas que agregar...", 50, 420);
  }
  if (transicion>1600 && transicion<2220) {
    fill(20, 66, 40);
    rect(0, 0, 640, 480);
    fill(255);
    textSize(20);
    text("Muchas gracias por ver, espero les haya gustado conocer a Astel", 50, 50);
    image(astel3, 400, 100, 200, 300);
    text("La verdad lo quiero mucho, y es un buen gato", 50, 80);
    text("Ademas, siempre hace bien ver fotos", 50, 110);
    text("de animales bonitos, como Astel", 50, 140);
    image(flompy, 70, 160, 200, 300);
  }
  if (transicion>2200) {
       fill(random(150,300), 70, 20);
    rect(0, 0, 640, 480);
    fill(255);
    textSize(30);
    text("Espero tenga un lindo día tarde o noche", 100,50);
    image(asteladios, 100,100,300,300);
    textSize(15);
    text("Nombre: Franco D'Aneglo", botonx1, 250);
    text("Legajo: 88224/2", botonx1, 300);
     fill(60);
    rect(botonx1,botony1,botonw1, botonh1);
    fill(20);
    textSize(30);
    text("Reiniciar", botonx1+25, botony1+65);
     if ((mouseX > botonx1) && (mouseX < botonx1+botonw1) && (mouseY > botony1) && (mouseY < botony1+botonh1)) { //mostrar seleccion
    fill(255);
  } else {
    fill(150);
  }
  text("Reiniciar", botonx1+15, botony1+55);
     if (botonII){
     transicion= 0;
     }
  }
}
void mousePressed() {
  if ((mouseX > botonx) && (mouseX < botonx+botonw) && (mouseY > botony) && (mouseY < botony+botonh)|| (keyPressed)) {
    botonI = true;
  } else {
    botonI = false;
  }
  if ((mouseX > botonx1) && (mouseX < botonx1+botonw1) && (mouseY > botony1) && (mouseY < botony1+botonh1)|| (keyPressed)) {
    botonII = true;
  } else {
    botonII = false;
  }
}
