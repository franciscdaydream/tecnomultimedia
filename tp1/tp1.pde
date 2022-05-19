float alpha = 0;
PImage titulo;
PImage fondotitulo;
PImage seleccion;
PFont fuentegeneral;
int frames;
int botonx = 450;
int botony = 200;
int botonw = 150;
int botonh = 70;
float alpha1 = 255;
float alpha2 = 255;
float alpha3 = 255;
float alpha4 = 255;
float alpha5 = 255;
float alpha6 = 255;
float alpha7 = 255;
float alpha8 = 255;
float alpha9 = 255;
boolean botonI = false;


void setup(){
  rectMode(CENTER);
size(700,400);
titulo = loadImage("titulohollow.png");
fondotitulo = loadImage("fondotitulo.jpg");
fuentegeneral = loadFont("fuentehollow.vlw");
seleccion = loadImage("seleccionhollow.png");
}

void draw (){
background(0);
float fade= 4;
float fade1= 3;
println("eje x " + mouseX +" eje y " + mouseY);
frames = frameCount;
textFont(fuentegeneral);
image(fondotitulo, -150, 0);
image(titulo, 175, 25, 350,145);

if ((mouseX > botonx) && (mouseX < botonx+botonw) && (mouseY > botony) && (mouseY < botony+botonh)) { //mostrar seleccion
  image(seleccion, 422,178, 200,100); 
  fill(255);
  } else {
  fill(150);
  }
 textSize(18);
 text("Comenzar",botonx,240);

if (botonI) {
  alpha = alpha + fade;
  }else{
 alpha = 0;
 }
   
 fill(0,alpha);
 rect(350,200,700,800);
 //inicio creditos
 
 textSize(10);
 fill (255,alpha1);
 text("a game by", 300, 180);
 textSize(25);
 text("Team Cherry", 225, 230);
 
 if (alpha >= 265){
  alpha1 = alpha1 + fade1;
  }else{
    alpha1 = 0;
 }
 
 if (alpha1 >= 450){
   alpha2 = alpha2 + fade1;
   }else{
     alpha2 = 0;
   }
   
  fill(0,alpha2);
 rect(350,200,700,800);
 //creditos 2
 
 fill (255,alpha3);
 textSize(18);
 text("Ari Gibson", 150, 200);
 text("William Pellen", 380, 200);
 
 if (alpha2 >= 265){
  alpha3 = alpha3 + fade1;
  }else{
    alpha3 = 0;
 }
 
 if (alpha3 >= 450){
   alpha4 = alpha4 + fade1;
   }else{
     alpha4 = 0;
   }
   
  fill(0,alpha4);
 rect(350,200,700,800);
 //creditos 3
 
  fill (255,alpha5);
 textSize(10);
 text("Technical direction by", 250, 160);
 textSize(18);
 text("David Kazi", 260, 200);
 
 
 if (alpha4 >= 265){
  alpha5 = alpha5 + fade1;
  }else{
    alpha5 = 0;
 }
 
 if (alpha5 >= 450){
   alpha6 = alpha6 + fade1;
   }else{
     alpha6 = 0;
   }
   
  fill(0,alpha6);
 rect(350,200,700,800);
 //creditos 4
 
  fill (255,alpha7);
 textSize(10);
 text("Sound & music by", 275, 160);
 textSize(18);
 text("Christopher Larkin", 220, 200);
 
 
 if (alpha6 >= 265){
  alpha7 = alpha7 + fade1;
  }else{
    alpha7 = 0;
 }
 
 if (alpha7 >= 450){
   alpha8 = alpha8 + fade1;
   }else{
     alpha8 = 0;
   }
   
  fill(0,alpha8);
 rect(350,200,700,800);
 //creditos final
 
 fill (color(random(255),random(255),random(255)),alpha9);
 textSize(20);
 text("Muchas gracias por ver!", 180, 200);
 
 
 if (alpha8 >= 265){
  alpha9 = alpha9 + fade1;
  }else{
    alpha9 = 0;
 }
 

   
 
 //no tocar, medidor de frames
 fill(255);
 textSize(10);
 text(frames, 10, 20);
 text("click para reset", 560,390);
}
//boton funcional
void mousePressed(){
   if ((mouseX > botonx) && (mouseX < botonx+botonw) && (mouseY > botony) && (mouseY < botony+botonh)|| (keyPressed)) {
 botonI = true;
 }else{
   botonI = false;
   }
   }
