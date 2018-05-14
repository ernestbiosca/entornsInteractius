String configFile = "data/quadsconfig.txt";
import ddf.minim.analysis.*;
import ddf.minim.*;

//piano
import themidibus.*; //Import the library
MidiBus myBus; // The MidiBus
Minim minim;  
AudioPlayer jingle;

ProjectedQuads projectedQuads;
PGraphics q1;
PGraphics q2;
PGraphics q3;
PGraphics q4;
PGraphics q5;
PGraphics q0;

int escena = 1;
//q1
int q1R=0;
int q1G=0;
int q1B=0;

boolean creatopos = false;



void setup(){
  size(900, 600, P3D);
  projectedQuads = new ProjectedQuads();  
  projectedQuads.load(configFile);
  
    MidiBus.list();
  myBus = new MidiBus(this, 0, -1);
  
  if (projectedQuads.getNumQuads() < 6) {
    projectedQuads.setNumQuads(6);  
  }  
  q0 = createGraphics(256, 256, P2D);
  projectedQuads.getQuad(0).setTexture(q0);
  q1 = createGraphics(1000, 1000, P2D);
  projectedQuads.getQuad(1).setTexture(q1);
  q2 = createGraphics(1000, 1000, P2D);
  projectedQuads.getQuad(2).setTexture(q2);
  q3 = createGraphics(1000, 1000, P2D);
  projectedQuads.getQuad(3).setTexture(q3);
  q4 = createGraphics(1000, 1000, P2D);
  projectedQuads.getQuad(4).setTexture(q4);
  q5 = createGraphics(1000, 1000, P2D);
  projectedQuads.getQuad(5).setTexture(q5);
}

void draw(){
    background(0);
  //1
  dibuixaq1();
  //2
  dibuixaq2();
  //3
  dibuixaq3();
  
  projectedQuads.draw();

}


void keyPressed() {
  //let projectedQuads handle keys by itself
  projectedQuads.keyPressed();
  
  if(key == '1'){
    //que pasarà a escena 1? són tots iguals
    escena = 1;
    projectedQuads.getQuad(0).setTexture(q1);
    projectedQuads.getQuad(1).setTexture(q1);
    projectedQuads.getQuad(2).setTexture(q1);
    projectedQuads.getQuad(3).setTexture(q1);
    projectedQuads.getQuad(4).setTexture(q1);
    projectedQuads.getQuad(5).setTexture(q1);

  }
  if(key == '2'){
    escena = 2;
    projectedQuads.getQuad(0).setTexture(q1);
    projectedQuads.getQuad(1).setTexture(q1);
    projectedQuads.getQuad(2).setTexture(q2);
    projectedQuads.getQuad(3).setTexture(q1);
    projectedQuads.getQuad(4).setTexture(q4);
    projectedQuads.getQuad(5).setTexture(q5);
    

  }
  //Això serà el que substituirem pel teclat i la taula MIDI.
  //quan s'apreti tal tecla, si es tal escena pasarà tal.
  // es poden utilitzar variables (molt viable) o amb fer un bool i al dins del q1.draw dibuixes.
  if(key == 'a'){
    
    if(escena == 1){
      creatopos = true;
    }
  }
}

void mousePressed() {
  //let projectedQuads handle mousePressed by itself
  projectedQuads.mousePressed();
}

void mouseDragged() {
  //let projectedQuads handle mouseDragged by itself
  projectedQuads.mouseDragged();
}


//piano controlls




void noteOn(int channel, int pitch, int velocity) {
  // Receive a noteOn
  println();
  println("Note On:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
  
  if(pitch == 36 ){
    //escena1
     projectedQuads.getQuad(0).setTexture(q2);
    projectedQuads.getQuad(1).setTexture(q2);
    projectedQuads.getQuad(2).setTexture(q2);
    projectedQuads.getQuad(3).setTexture(q1);
    projectedQuads.getQuad(4).setTexture(q1);
    projectedQuads.getQuad(5).setTexture(q1);
    
  
  }
  
    if(pitch == 37 ){
    //escena2
     projectedQuads.getQuad(0).setTexture(q2);
    projectedQuads.getQuad(1).setTexture(q2);
    projectedQuads.getQuad(2).setTexture(q2);
    projectedQuads.getQuad(3).setTexture(q1);
    projectedQuads.getQuad(4).setTexture(q1);
    projectedQuads.getQuad(5).setTexture(q1);
    
  
  }
  
  
}

void noteOff(int channel, int pitch, int velocity) {
  // Receive a noteOff
  /*
  println();
  println("Note Off:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
  */
}

void controllerChange(int channel, int number, int value) {
  // Receive a controllerChange
  println();
  println("Controller Change:");
  println("--------");
  println("Channel:"+channel);
  println("Number:"+number);
  println("Value:"+value);
  
  
  if (number == 48){
    //amplada2 = map(value, 0, 127, 10, 200);
    //println(amplada);
  }
  
   if (number == 49){
    numPals = map(value, 0, 127, 1, 10);
  }
  
}