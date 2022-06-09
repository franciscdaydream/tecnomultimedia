int cuadri= 20;
int ancho;
int ver1 = 79;
int ver2 = 182;

int amr1 = 166;
int amr2 = 221;


PImage estrellita;
void setup(){
  size(800,800);
  estrellita = loadImage("estrellita.png");
   ancho = width/cuadri;
  }
 
  void draw (){
    background(255);
    noStroke();
    cuadricula();
    
    }
  void cuadricula () {

   float amr3 = map(mouseX,0,width,0,height);
  float ver3 = map(mouseY,0,width,0,height);
    for (int x=0; x<cuadri; x++){
      for (int y=0; y<cuadri; y++){
        if((x+y)%2==0){ 
        fill(ver1,ver2,ver3);
      }else{ 
        fill(amr1,amr2,amr3);
       } 
      rect(x*ancho, y*ancho, ancho, ancho);
     if((x+y)%2==0){ 
        tint(189,72,150);
      }else{ 
        tint(255);
       } 
     image(estrellita,x*ancho-12, y*ancho-12,25,25);
      }
     }
     if((mouseX > 255) ||(mouseY > 255) && (mouseX > 255)|| (mouseX > 255)){
       amr3 = 0;
       ver3 = 0;
      }else{
      amr3 = map(mouseX,0,width,0,height);
  ver3 = map(mouseY,0,width,0,height);
      }
  }
