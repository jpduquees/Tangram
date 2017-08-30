void setup(){
  size (1000,600);
};

  //Rotación
  
  //triangulo menor 1
  int   tm1r  = 0;  
  
  //triangulo menor 2
  int   tm2r  = 0;
  
  //triangulo mayor 1
  int   tM1r  = 0;
  
  //triangulo mayor 2
  int   tM2r  = 0;
  
  //triangulo mediano
  int   tMr  = 0;
  
  //cuadrado
  int   cuar  = 0;
  
  //cuadrilatero extraño
  int   cuer  = 0;

  // Colores
  
  //Cuadrado
  color cuac = color(255,0,0);
  color cuac1 = color(255,0,0);
  int cuaex  = (-65536);
  boolean actwincua;
  
  //Cuadrilatero extraño
  color cuec  = color(0,0,204);
  color cuec1 = color(0,0,204);
  int   cueex   = (-16777012);
  boolean actwincue;
  
  //triangulo menor 1
  color tm1c1 = color(51,153,255);
  color tm1c  = color(51,153,255);
  int   tm1ex = -13395457;
  boolean actwintm1;
  
  //triangulo menor 2
  color tm2c1  = color(127,0,255);
  color tm2c   = color(127,0,255);
  int   tm2ex  = -8453889;
  boolean actwintm2;
  
  //triangulo mediano
  color tMc1 = color(255,255,51);
  color tMc  = color(255,255,51);
  int   tMex = -205;
  boolean actwintM;
  
  //Triangulo mayor 1
  color tM1c1 = color(0,204,102);
  color tM1c  = color(0,204,102);
  int   tM1ex = -16724890;
  boolean actwintM1;
  
  //triangulo mayor 2
  color tM2c1 = color(255,128,0);
  color tM2c  = color(255,128,0);
  int   tM2ex = -32768;
  boolean actwintM2;
  
  //Color correcto
  color rigthctm1 = color(255);
  color rigthctm2 = color(255,255,254);
  color rigthctM1 = color(255,255,253);
  color rigthctM2 = color(255,255,252);
  color rigthctM  = color(255,255,251);
  color rigthccua = color(255,255,250);
  color rigthccue = color(255,255,249);
//Contador
  boolean contador;

//coordenadas
//cuadrilatero
  boolean cuadrila;
  float cuex= 900;
  float cuey= 575;

//Cuadrado
  boolean cuadrado;
  float cuax= 100;
  float cuay= 425;

//Triangulo Mayor 1 
  boolean triang1;
  float tM1x= 375;
  float tM1y= 575;
 

//Triangulo Mayor 2
  boolean triang2;
  float tM2x= 850;
  float tM2y= 275;
  
//Triangulo Mediano
  boolean trianmed;
  float tMx= 300;
  float tMy= 425;

//Triangulo menor 1 (tm1)
  boolean triangulo1;
  float tm1x=200;
  float tm1y=575;

//Triangulo menor 2 (tm2)

boolean triangulo2;
  float tm2x=550;
  float tm2y=375;
  
  
void draw(){
  
  //Modulos
  //triangulo Mediano
  int modulotM = tMr % 8;
  // triangulo mayor1
  int modulotM1 = tM1r % 8;
  //triangulo mayor 2
  int modulotM2 = tM2r % 8;
  //triangulo Mediano
  int modulotm1 = tm1r % 8;
  //triangulo Mediano
  int modulotm2 = tm2r % 8;
  //triangulo Mediano
  int modulocua = cuar % 2;
  //triangulo Mediano
  int modulocue = cuer % 8;
  
  int caja = get(mouseX,mouseY);
    
  background (65,65,90);
  fill(0);
  noStroke();
  //rect(50,50,300,300);
  
  
  //Cuadrado Guia
  int a = 350;
  int b = 200;
  int c = 50;
  int d = 275;
  int e = 125;
  
  //Triangulo mayor base (1)
  triangle(a,a,b,b,a,c);
  //Triangulo Mayor (tM2 )
  triangle(a,a,b,b,c,a);
  //Triangulo Mediano ( tM)
  triangle(c,c,b,c,c,b);
  //Triangulo menor base arriba (tm2)
  triangle(b,c,d,e,a,c);
  //Triangulo menor 1 (tm1)
  triangle(e,e,b,b,e,d);
  //Cuadrado
  quad (b,b,e,e,b,c,d,e);
  //Cuadrilatero
  quad (c,a,e,d,e,e,c,b);
  
  //Piezas
  
  
  //Cuadrado (cua)
  
  fill(cuac1);
  
  if( mousePressed==true && contador == false){
    if (mouseButton== LEFT){
      if (caja == -6 || cuaex == caja){
      cuadrado=true;
      contador = true;
      }
    }
  }
  
  if(cuadrado==true){
    cuax = mouseX;
    cuay = mouseY;
  }
  
  if ( (modulocua == 0) && ((cuax<=b+1 && cuax>=b-1 && cuay <=c+1  && cuay >=c-1) || (cuax<=d+1 && cuax>=d-1 && cuay <=e+1  && cuay >=e-1) || (cuax<=b+1 && cuax>=b-1 && cuay <=b+1  && cuay >=b-1) || (cuax<=e+1 && cuax>=e-1 && cuay <=e+1  && cuay >=e-1))){
    cuac= color(rigthccua);
    fill (cuac);
  }

  pushMatrix();

  translate( cuax, cuay);
 
  if ( cuar %2 == 1){
  rotate( radians(45));
  }else{
    rotate (0);
  }
  quad (0,0,-75,75,0,150,75,75);
  popMatrix();
 
    //Cuadrilatero extraño (cue)
    
  fill (cuec1);
  
  if( mousePressed==true && contador ==false){
    if (mouseButton== LEFT){
      if (cueex == caja || caja==-7){  
      cuadrila= true;
      contador = true;  
      }
    }
  }
  
  if(cuadrila==true){
  cuex=mouseX;
  cuey=mouseY;
  }
  
  if ( (modulocue == 0 && ((cuex<=c+1 && cuex>=c-1 && cuey <=a+1  && cuey >=a-1) || (cuex<=d+1 && cuex>=d-1 && cuey <=d+1  && cuey >=d-1))) || (modulocue == 2 && ((cuex<=c+1 && cuex>=c-1 && cuey <=c+1  && cuey >=c-1) || (cuex<=e+1 && cuex>=e-1 && cuey <=d+1  && cuey >=d-1))) || (modulocue == 4 && ((cuex<=a+1 && cuex>=a-1 && cuey <=c+1  && cuey >=c-1) || (cuex<=e+1 && cuex>=e-1 && cuey <=e+1  && cuey >=e-1))) || (modulocue == 6 && ((cuex<=a+1 && cuex>=a-1 && cuey <=a+1  && cuey >=a-1) || (cuex<=d+1 && cuex>=d-1 && cuey <=e+1  && cuey >=e-1)))){
    cuec= color(rigthccue);
    fill (cuec);
  }
  
  pushMatrix();

  translate( cuex, cuey);
 
  
  rotate( radians(cuer*45));
  
  quad (0,0,0,-150,75,-225,75,-75);
  popMatrix();
  
  
  //Triangulo Mayor 1 (tM1)
  
  fill(tM1c1);
  
  if( mousePressed == true && contador ==false){
    if (mouseButton== LEFT){
      if (tM1ex==caja || caja ==-3){ 
      triang1=true;
      contador = true;
      }
    }
  }
  
  if(triang1==true){
  tM1x=mouseX;
  tM1y=mouseY;
  }
  
  if( ((modulotM1 == 0) && (tM1x<=c+1 && tM1x>=c-1 && tM1y <=a+1  && tM1y >=a-1)) || ((modulotM1==2) && (tM1x<=c+1 && tM1x>=c-1 && tM1y <=c+1  && tM1y >=c-1)) || ((modulotM1==4) && (tM1x<=a+1 && tM1x>=a-1 && tM1y <=c+1  && tM1y >=c-1)) || ((modulotM1==6) && (tM1x<=a+1 && tM1x>=a-1 && tM1y <=a+1  && tM1y >=a-1))){
    tM1c = color(rigthctM1);
    fill(tM1c);
  }
  pushMatrix();

  translate( tM1x, tM1y);
 
  
  rotate( radians(tM1r*45));
  
  triangle (0,0,150,-150,300,0);
  popMatrix();
    
  //Triangulo Mayor 2 (tM2)
  
  fill(tM2c1);
  
  if ( mousePressed == true && contador ==false){
    if (mouseButton== LEFT){
      if (tM2ex==caja || caja ==-4){  
      triang2  = true;
      contador = true;
    }
    }
  }
  
  if (triang2==true){
    tM2x=mouseX;
    tM2y=mouseY;
  }
  
  if( ((modulotM2 == 0) && (tM2x<=a+1 && tM2x>=a-1 && tM2y <=c+1  && tM2y >=c-1)) || ((modulotM2==2) && (tM2x<=a+1 && tM2x>=a-1 && tM2y <=a+1  && tM2y >=a-1)) || ((modulotM2==4) && (tM2x<=c+1 && tM2x>=c-1 && tM2y <=a+1  && tM2y >=a-1)) || ((modulotM2==6) && (tM2x<=c+1 && tM2x>=c-1 && tM2y <=c+1  && tM2y >=c-1))){
    tM2c = color(rigthctM2);
    fill(tM2c);
  }
  
  pushMatrix();

  translate( tM2x, tM2y);
 
  
  rotate (radians(tM2r*45));
  
  triangle (0,0,-150,150,0,300);
  popMatrix();
  
  //Triangulo Medio (tM)
  
  fill(tMc1);
  
  if(mousePressed== true && contador ==false){
    if (mouseButton== LEFT){
      if ( caja == -5 || tMex == caja){  
        trianmed= true;
        contador = true;
      }
    }
  }
  
  if (trianmed == true){
    tMx=mouseX;
    tMy=mouseY;
  }
  
  if ((modulotM == 0 && (tMx<=c+1 && tMx>=c-1 && tMy <=c+1  && tMy >=c-1)) || (modulotM ==4 &&(tMx<=a+1 && tMx>=a-1 && tMy <=a+1  && tMy >=a-1 ))|| (modulotM == 2 && (tMx<=a+1 && tMx>=a-1 && tMy <=c+1  && tMy >=c-1 )) || (modulotM ==6 && (tMx<=c+1 && tMx>=c-1 && tMy <=a+1  && tMy >=a-1))){
    actwintM = true;
  }else{
    actwintM=false;
  }

  pushMatrix();
  if (actwintM ==true){
    tMc = color(rigthctM);
    fill(tMc);
  }
  translate(tMx, tMy);
     
  rotate( radians(tMr*45));
  
  triangle (0,0,0,150,150,0);
  popMatrix();
  
 
  //Triangulo menor 1 (tm1)
  
  fill(tm1c1);  
  
  if(mousePressed == true && contador ==false){
    if (mouseButton== LEFT){
      if (tm1ex== caja || caja== -1){
      triangulo1 = true;
      contador = true;
      }
    }
  }
  
  if (triangulo1==true){
    tm1x=mouseX;
    tm1y=mouseY;
  }
  
  if ((modulotm1 == 2 && ((tm1x<=b+1 && tm1x>=b-1 && tm1y <=c+1  && tm1y >=c-1)|| (tm1x<=e+1 && tm1x>= e-1 && tm1y<=e+1 && tm1y>= e-1) || (tm1x<=c+1 && tm1x>= c-1 && tm1y<=c+1 && tm1y>= c-1))) 
  || (modulotm1 == 4 && ((tm1x<=a+1 && tm1x>=a-1 && tm1y <=b+1  && tm1y >=b-1)|| (tm1x<=d+1 && tm1x>= d-1 && tm1y<=e+1 && tm1y>=e-1) || (tm1x<=a+1 && tm1x>= a-1 && tm1y<=c+1 && tm1y>= c-1)))
  || (modulotm1 == 6 && ((tm1x<=b+1 && tm1x>=b-1 && tm1y <=a+1  && tm1y >=a-1)|| (tm1x<=d+1 && tm1x>= d-1 && tm1y<=d+1 && tm1y>=d-1) || (tm1x<=a+1 && tm1x>= a-1 && tm1y<=a+1 && tm1y>= a-1)))
  || (modulotm1 == 0 && ((tm1x<=c+1 && tm1x>=c-1 && tm1y <=a+1  && tm1y >=a-1)|| (tm1x<=e+1 && tm1x>= e-1 && tm1y<=d+1 && tm1y>=d-1) || (tm1x<=c+1 && tm1x>= c-1 && tm1y<=b+1 && tm1y>= b-1)))){
    tm1c = color(rigthctm1);
    fill(tm1c);
  }
  
  pushMatrix();

  translate( tm1x, tm1y);
 
  rotate( radians(tm1r*45));
  
  triangle (0,0,75,-75,0,-150);
  popMatrix();
  //Triangulo menor 2 (tm2)

  
  fill(tm2c1);  
  
  if(mousePressed == true && contador ==false){
    if (mouseButton== LEFT){
    if ( caja == -2||tm2ex == caja){
      triangulo2 = true;
      contador = true;
      }
    }
  } 
  
  if(triangulo2 == true){
    tm2x = mouseX;
    tm2y = mouseY;
  }
  
  if ((modulotm2 == 0 && ((tm2x<=b+1 && tm2x>=b-1 && tm2y <=c+1  && tm2y >=c-1)|| (tm2x<=e+1 && tm2x>= e-1 && tm2y<=e+1 && tm2y>= e-1) || (tm2x<=c+1 && tm2x>= c-1 && tm2y<=c+1 && tm2y>= c-1))) 
  || (modulotm2 == 2 && ((tm2x<=a+1 && tm2x>=a-1 && tm2y <=b+1  && tm2y >=b-1)|| (tm2x<=d+1 && tm2x>= d-1 && tm2y<=e+1 && tm2y>=e-1) || (tm2x<=a+1 && tm2x>= a-1 && tm2y<=c+1 && tm2y>= c-1)))
  || (modulotm2 == 4 && ((tm2x<=b+1 && tm2x>=b-1 && tm2y <=a+1  && tm2y >=a-1)|| (tm2x<=d+1 && tm2x>= d-1 && tm2y<=d+1 && tm2y>=d-1) || (tm2x<=a+1 && tm2x>= a-1 && tm2y<=a+1 && tm2y>= a-1)))
  || (modulotm2 == 6 && ((tm2x<=c+1 && tm2x>=c-1 && tm2y <=a+1  && tm2y >=a-1)|| (tm2x<=e+1 && tm2x>= e-1 && tm2y<=d+1 && tm2y>=d-1) || (tm2x<=c+1 && tm2x>= c-1 && tm2y<=b+1 && tm2y>= b-1)))){
    tm2c = color(rigthctm2);
    fill(tm2c);
  }
  
  
  pushMatrix();

  translate( tm2x, tm2y);
 
  
  rotate( radians(tm2r*45));
  
  triangle (0,0,150,0,75,75);
  popMatrix();
  
  if ( cuax<=15 || cuay>=585 || cuay<=15 || cuax>=985){
    cuax = 100;
    cuay = 425;
  }
  
  if ( cuex<=15 || cuey>=585 || cuey<=15 || cuex>=985){
    cuex = 900;
    cuey = 575;
  }
  
  if ( tm1x<=15 || tm1y>=585 || tm1y<=15 || tm1x>=985){
    tm1x = 200;
    tm1y = 575;
  }
  
  if ( tm2x<=15 || tm2y>=585 || tm2y<=15 || tm2x>=985){
    tm2x = 550;
    tm2y = 375;
  }
  
  if ( tM1x<=15 || tM1y>=585 || tM1y<=15 || tM1x>=985){
    tM1x = 375;
    tM1y = 575;
  }
  
  if ( tM2x<=15 || tM2y>=585 || tM2y<=15 || tM2x>=985){
    tM2x = 850;
    tM2y = 275;
  }
  
  if ( tMx<=15 || tMy>=585 || tMy<=15 || tMx>=985){
    tMx = 300;
    tMy = 425;
  }

  println(mouseX + "  " + mouseY + "  "+ keyPressed + " " + key + " " + tMr + " ");
  //Instrucciones
  
  fill(40);
  
  textSize(40);
  text( "Tangram", 400,80);
  
  fill(10);
  
  textSize(20);
  text( "Instrucciones:", a+10,130);
  textSize(15);
  text( "Ubica el cursor sobre cualquier figura y pulsa el click derecho para seleccionarla,", a+10,160);
  text( "en la parte inferior encontraras que tecla debes pulsar si quieres que una ficha rote,", a+10,190);
  text( "si tu ficha esta en la posicion correcta, y el angulo correcto cambiara de color,", a+10,220);
  text( "ten en cuenta que no hay solo una solución para el tablero, asi que, el hecho de", a+10,250);
  text( "que dos fichas tengan el cambio de color no quiere decir que hagan parte de una", a+10,280);
  text( "misma solución, cuando todas tus fichas coincidan con una solución ganaste.", a+10,310);
  text( mouseX, 810,590);
  text ("Coord : X=", 725,590);
  text ("Y=", 870,590);
  text(mouseY,900,590);
  
  if (tm2c == rigthctm2 && tm1c == rigthctm1 && tMc == rigthctM && tM2c == rigthctM2 && tM1c == rigthctM1 && cuec == rigthccue && cuac == rigthccua){
  textSize(40);
  text("¡Felicidades!, ¡Ganaste!.", 100, 450);
  }else{
    text(" ", 100, 450);
  }

}

 void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  println(e);
 }


void mouseReleased(){
  triangulo2 = false;
  triangulo1 = false;
  trianmed   = false;
  triang2    = false;
  triang1    = false;
  cuadrado   = false;
  cuadrila   = false;
  contador   = false;
  tm2c       = color(127,0,255);
  cuac       = color(255,0,0);
  cuec       = color(0,0,204);
  tm1c       = color(51,153,255);
  tm2c       = color(127,0,255);
  tMc        = color(255,255,51);
  tM1c       = color(0,204,102);
  tM2c       = color(255,128,0);
}

 void keyTyped(){
   if ( key == '1'){
     tm1r=tm1r+1;
   }
  
   if ( key == '2'){
     tm2r= tm2r+1;
   }
   
   if ( key == '3'){
      tMr= tMr+1;
   }
   
   if ( key == '4'){
      tM1r= tM1r+1;
   }
    
   if ( key == '5'){
      tM2r= tM2r+1;
   }
    
   if ( key == '6'){
      cuar= cuar+1;
   }
    
   if ( key == '7'){
      cuer= cuer+1;
   }
 }
 