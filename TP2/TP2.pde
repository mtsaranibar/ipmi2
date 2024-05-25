String Pantalla;

PImage imagen,imagen2,imagen3;
int y;//velocidad de movimiento del texto
int speed=2;//velocidad de moviento del texto

void setup() {
  size(640,480);//tamaño de la ventana
  y= height;// posicion inicial del texto(parte inferior de la ventana)
  textAlign(CENTER,CENTER);
  textSize(32);
  imagen= loadImage("one piece.jpg");
  imagen2= loadImage("tripulacion.jpg");
  imagen3= loadImage("live-accion.jpg");
  Pantalla="1"; 
  }
void draw(){
  
  if(Pantalla=="1"){
    background(355);// fondo blanco
  println(mouseX, mouseY);
  background(255);
  image(imagen,0,0,640,480);
  fill(#FFF708);//Color del texto(amarillo)
       text("bienvenidos a one piece un mundo de piratas",50,10,width/2,y);// dibujar el texto
       text("donde esta llena de aventuras y peligros",50,100, width/2,y);//dibujar el texto
       text("esta historia trata de mokey di luffy", 50,200,width/2,y);//dibujar el texto
       text("que quiere covertirse en el rey de los piratas",50,300,width/2,y);//dibujar el texto
       text("y encontrar el one piece",50,400,width/2,y);//dibujar el texto
   y-= speed;//mover el texto hacia arriba
   if (y<0){//reiniciar la posicion cuando el texto sale de la ventana
   y= height;
   }
  }
  else if (Pantalla=="2"){
    background(355);
    background(200);
    println(mouseX, mouseY);
    background(255);
    image(imagen2,0,0,640,480);
    text("todo por un pirata llamado shaks",50,10,width/2,y);// dibujar el texto
    text("que lo inspiro a covertirse en pirata",50,100, width/2,y);//dibujar el texto
    text("quiere reunir una tripulacion de 10",50,200, width/2,y);//dibujar el texto
    text("zoro,nami,usopp,sanji,chopper,robin,franky,brook y jinbe",50,350,width/2,y);//dibujar el texto 
   y-= speed;//mover el texto hacia arriba
   if(y<0){//reiniciar la posicion cuando el texto sale de la ventana
   y=height;
   }
  }
  else if (Pantalla=="3"){
    background(355);
    background(200);
    println(mouseX, mouseY);
    background(255);
    image(imagen3,0,0,640,480);
    text("ahora por tantos años de aventuras juntos",50,10,width/2,y);//dibujar el texto
    text("el creador del manga decidio crear un live-accion de one piece",50,150,width/2,y);//dibujar el texto
    text("que se volvio muy popular en la plataforma de netflix",50,300,width/2,y);//dibujar el texto
    fill(#FFFFFF);
    rect(0,0,50,50);
    y-= speed;//mover el texto hacia arriba
    if(y<0){//reiniciar la pocision cuando el texto sale de la ventana
    y=height;
    }
  }}
 void mouseClicked(){
   if(Pantalla=="1"){
     
     Pantalla="2";
   }
   
   else if(Pantalla=="2"){
     
     Pantalla="3";
   }
    else if (mouseX>0 && mouseX < 50 && mouseY >0 && mouseY <50 && Pantalla=="3"){
    
      Pantalla="1";
    }}
 
 




  
