void setup() {
  size (600,600);
  background(#FF564D);
   }
   
void draw() {
println("eje x " + mouseX +" eje y " + mouseY);
fill(#FF6B27);
stroke(#FFC634);
strokeWeight(3);
circle(55,250,200);
fill(#FFFFFF);
stroke(#D6D5DE);
quad(268,57,303,61,345,52,270,120);
fill(#676876);
stroke(#4D4E55);
quad(800,400,500,200,350,45,100,250);
fill(#FFFFFF);
stroke(#D6D5DE);
quad(350,43,397,92,333,112,285,97);
fill(#676876);
stroke(#4D4E55);
quad(-10,300,149,180,270,53,510,369);
fill(#FFFFFF);
stroke(#D6D5DE);
quad(270,51,322,120,252,114,226,97);
fill(#2A551F);
stroke(#2E5025);
strokeWeight(20);
quad(-10,300,700,300,600,600,-10,600);
strokeWeight(2);
fill(#FFB3AA);
stroke(#FFAEA5);
ellipse(313,550,1500,325);
}
