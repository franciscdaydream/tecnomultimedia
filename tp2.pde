//Franco D'Angelo 88224/2
//Controles: SPACE= cambiar de color
// r = reiniciar
// link al video: https://youtu.be/TpXWcfiFE5c

color boton;
int tX;
int tY;
int m;
PImage origen;
void setup() {
  colorMode(HSB);
  size( 800, 400 );
  origen = loadImage("ilusion_original.jpg");
  noStroke();
  noCursor();
  boton = color( 15 );
  tX = height / 12;
  tY = 35;
}

void draw() {
  pushMatrix();
  translate( 400, 2 );

  background(255);

  for ( int x = 0; x < 12; x ++ ) {
    for ( int y = 0; y < 12; y ++ ) {

      float m = DistMapMouse( x*tX, y*tY, 0, 2 );

      cuadrados( x+m, y, tX, 35 );
    }
  }



  //---------
  stroke(1);
  strokeWeight(1);
  line( mouseX, 0, mouseX, height );
  line( 0, mouseY, width, mouseY );
  //---------
  popMatrix();

  image (origen, 0, 0, 400, 400);
}


//------------FUNCIONES--------------

void cuadrados( float x, int y, int t, int m ) {
  if ( x%2 == 0 ) {
    fill( boton );
  } else {
    fill( 255 );
  }

  strokeWeight(1.5);
  rect( x*t, y*t, t+10, m );
  strokeWeight(1.2);
  stroke(0);
  line(0, y*t, width, y*t);
  strokeWeight(1);
  stroke(225);
  line(0, y*t+1, width, y*t+1);
  stroke(0);
}

//-----------INTERACCIONES---------

float DistMapMouse( int x2, int y2, int min, int max ) {
  float d = dist( mouseX, mouseY, x2, y2 );  
  float m = map( d, 0, 565, min, max );  

  return m;
}

void reset() {
  boton = color( 0 );
  tY = height / 35;  
}

//--------------BOTONES----------------------
void keyPressed() {
  if ( key == ' ' ) {
    boton = color( random(0, 255), 150, random(15, 100) );
  }

  if ( key == 'r' ) {
    reset();
  }
}
