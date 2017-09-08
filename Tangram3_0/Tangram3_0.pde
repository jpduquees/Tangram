
/* en cada carcteristica se usa un codigo de 3 a 4 letras estas son cada una de las piezas:
- tm1 es el triangulo menor 1 o triangulo azul
- tm2 es el triangulo menor 2 o triangulo morado
- tM1 es el triangulo mayor 1 o triangulo verde
- tM2 es el triangulo mayor 2 o triangulo naranja
- tM es el triangulo mediano o triangulo aamarillo
- cua es el cuadrado o cuadrilatero rojo
- cua es el cuadrilatero o cuadrilatero azul
*/
  PImage fondo;
  //int rotateCount =0;
  //Movimiento con teclado
  int mouseTM1Xi,mouseTM1Yi, mouseTM2Xi, mouseTM2Yi, mouseTMXi, mouseTMYi, mouseTm1Xi, mouseTm1Yi, mouseTm2Xi, mouseTm2Yi, mouseCuaXi, mouseCuaYi, mouseCueXi, mouseCueYi;
 // Movimiento con teclado
  color negro = color(0);
  //moveCua Guia
  int a = 350, b = 200, c = 50, d = 275, e = 125, f=245, g=420, h=285, i=25, j=168, k=95, l=80,n=230, o=395, p=320;
   // Contador seleccion ficha
   int counter2, counter;
   boolean win;
   // movimiento mouse
   boolean movekTm1, movekTm2, movekTM1, movekTM2, movekTM, movekCua, movekCue;
  //Rotación
  int   tm1r, tm2r, tM1r, tM2r, tMr, cuar, cuer, cueg;
  // Colores
  color cuac = color(255,0,0), cuec  = color(0,0,204), tm1c = color(51,153,255), tm2c = color(127,0,255), tMc = color(255,255,51), tM1c  = color(0,204,102), tM2c  = color(255,128,0);
//Contador
  boolean contador;
//coordenadas
  boolean moveCue; int cuex= 900, cuey= 575;
  boolean moveCua; int cuax= 100, cuay= 425;
  boolean moveTM1; int tM1x= 375, tM1y= 575;
  boolean moveTM2; int tM2x= 850, tM2y= 275;
  boolean moveTM; int tMx= 300, tMy= 425;
  boolean moveTm1; int tm1x=200, tm1y=575;
  boolean moveTm2; int tm2x=550, tm2y=375;
  int start; color green= color(15,255,46);
void setup(){
  size (1000,599);
  fondo= loadImage("fondo1.jpg");
};

void draw(){
  int chooseGet = get(mouseX,mouseY);
  if (start==0){
  background (fondo);
  textSize(100);
  fill (0);
  text("Tangram",200,200);
  fill(green);
  rect(50,50,50,50);
  fill(10);
  
  textSize(20);
  text( "Instrucciones:", a+10,130);
  textSize(15);
  text( "Ubica el cursor sobre cualquier figura y pulsa el click izquierdo para seleccionarla,", c+10,310);
  text( "en la parte inferior encontraras que tecla debes pulsar si quieres que una ficha rote,", c+10,340);
  text( "si tu ficha esta en la posicion correcta, y el angulo correcto cambiara de color,", c+10,370);
  text( "ten en cuenta que no hay solo una solución para el tablero, asi que, el hecho de", c+10,400);
  text( "que dos fichas tengan el cambio de color no quiere decir que hagan parte de una", c+10,430);
  text( "misma solución, cuando todas tus fichas coincidan con una solución ganaste.", c+10,460);
  if (chooseGet == green && mousePressed){
    start+=1;
  }
  }
  
  if (start==1){
  counter=0;
  //Modulos
  int modulotM = abs(tMr % 8), modulotM1 = abs(tM1r % 8),  modulotM2 = abs(tM2r % 8),  modulotm1 = abs(tm1r % 8), modulotm2 = abs(tm2r % 8), modulocua = abs(cuar % 2), moduloCue = abs(cuer % 8),moduloCueg = abs((cueg % 2)-1);
  int modulo2cuey=abs(cuey%5),modulo2cuex=abs(cuex%5),modulo2cuay=abs(cuay%5),modulo2cuax=abs(cuax%5),modulo2tm1y=abs(tm1y%5),modulo2tm1x=abs(tm1x%5),modulo2tm2y=abs(tm2y%5),modulo2tm2x=abs(tm2x%5),modulo2tM1y=abs(tM1y%5),modulo2tM1x=abs(tM1x%5),modulo2tM2y=abs(tM2y%5),modulo2tM2x=abs(tM2x%5),modulo2tMy=abs(tMy%5),modulo2tMx=abs(tMx%5);   
  background (fondo);
  fill(color(negro));   
  noStroke();
  //rect(50,50,300,300);
  
  rect (c,c, a-50,a-50);
  
  //Piezas
 
  //moveCua (cua)
  
  fill(cuac);
  
  if (mousePressed==true && contador == false){
    if (mouseButton== LEFT){
      if (cuac == chooseGet){
      moveCua=true;
      contador = true;
      }
    }
  }
  
  if(moveCua==true){
    cuax = mouseX-mouseCuaXi;
    cuay = mouseY-mouseCuaYi;
  }
  
  if ( modulocua == 0){
    if (cuax<=b+2 && cuax>=b-2 && cuay <=c+2  && cuay >=c-2){
      cuax=b;
      cuay=c;
    }
    if (cuax<=d+2 && cuax>=d-2 && cuay <=e+2  && cuay >=e-2){
      cuax=d;
      cuay=e;
    }
    if (cuax<=b+2 && cuax>=b-2 && cuay <=b+2  && cuay >=b-2){
      cuax=b;
      cuay=b;
    }
    if (cuax<=e+2 && cuax>=e-2 && cuay <=e+2  && cuay >=e-2){
      cuax=e;
      cuay=e;
    }
  }
  pushMatrix();
/*
  if(moveCua){
  translate( mouseX, mouseY);
  } else{
  translate( cuax, cuay);
  }
  
  if ( cuar %2 == 1){
  rotate( radians(45));
  }
  else{
    rotate (0);
  }
  if(moveCua){
  translate( -mouseX, -mouseY);
  }else{
  translate( -cuax, -cuay);
  }
  translate( cuax, cuay);
  quad (0,0,-75,75,0,150,75,75);
  */
  translate(cuax, cuay+75);
  
  rotate( radians(cuar*45));
  translate(-(cuax), -(cuay+75));  
  translate(cuax, cuay);
  quad (0,0,-75,75,0,150,75,75);
 
  popMatrix();
 
  //move Cua/tero extraño (cue)

  fill (cuec);    
  
  if( mousePressed==true && contador ==false){
    if (mouseButton== LEFT){
      if (cuec == chooseGet){ 
      moveCue= true;
      contador = true;  
      }
    }
  }
  
  if(moveCue==true){
  cuex=mouseX-mouseCueXi;
  cuey=mouseY-mouseCueYi;
  }
  
  if(moduloCueg==0){
    switch (moduloCue){
    case 0:
    if(cuex<=c+2 && cuex>=c-2 && cuey <=a+2  && cuey >=a-2){
      cuex=c;
      cuey=a;
    }
    if(cuex<=d+2 && cuex>=d-2 && cuey <=d+2  && cuey >=d-2){
      cuex=d;
      cuey=d;
    }
    case 2:
    if(cuex<=b+7 && cuex>=b+3 && cuey <=g+2  && cuey >=g-2){
      cuex=b+5;
      cuey=g;
    }
    if(cuex<=e+7 && cuex>=e+3 && cuey <=b-3  && cuey >=b-7){
      cuex=e+5;
      cuey=b-5;
    }
    case 4:
    if(cuex<=c+12 && cuex>=c+8 && cuey <=a+2  && cuey >=a-2){
      cuex=c+10;
      cuey=a;
    }
    if(cuex<=d+12 && cuex>=d+8 && cuey <=d+2  && cuey >=d-2){
      cuex=d+10;
      cuey=d;
    }
    case 6:
    if(cuex<=b+7 && cuex>=b+3 && cuey <=g+12  && cuey >=g+8){
      cuex=b+5;
      cuey=g+10;
    }
    if(cuex<=e+7 && cuex>=e+3 && cuey <=b+7  && cuey >=b+3){
      cuex=e+5;
      cuey=b+5;
    }
  }
  }  
 if(moduloCueg==1){
    switch (moduloCue){
    case 0:
    if(cuex<=d+2 && cuex>=d-2 && cuey <=a+2  && cuey >=a-2){
      cuex=d;
      cuey=a;
    }
    if(cuex<=c+2 && cuex>=c-2 && cuey <=d+2  && cuey >=d-2){
      cuex=c;
      cuey=d;
    }
    case 2:
    if(cuex<=e+7 && cuex>=e+3 && cuey <=g+2  && cuey >=g-2){
      cuex=e+5;
      cuey=g;
    }
    if(cuex<=b+7 && cuex>=b+3 && cuey <=b-3  && cuey >=b-7){
      cuex=b+5;
      cuey=b-5;
    }
    case 4:
    if(cuex<=h+2 && cuex>=h-2 && cuey <=a+2  && cuey >=a-2){
      cuex=h;
      cuey=a;
    }
    if(cuex<=c+12 && cuex>=c+8 && cuey <=d+2  && cuey >=d-2){
      cuex=c+10;
      cuey=d;
    }
    case 6:
    if(cuex<=b+7 && cuex>=b+3 && cuey <=b+7  && cuey >=b+3){
      cuex=b+5;
      cuey=b+5;
    }
    if(cuex<=e+7 && cuex>=e+3 && cuey <=g+12  && cuey >=g+8){
      cuex=e+5;
      cuey=g+10;
    }
  }
  }
  pushMatrix();
  translate(cuex+32.5, cuey-112.5);
  rotate( radians(cuer*45));
  translate(-(cuex+32.5), -(cuey-112.5));  
  translate( cuex, cuey);
  if (moduloCueg==0){
  quad (0,0,0,-150,75,-225,75,-75);
  }else{
    quad (0,-75,0,-225,75,-150,75,0);
  }
  popMatrix();
  
  //Triangulo Mayor 1 (tM1)
  
  fill(tM1c);
  
  if( mousePressed == true && contador ==false){
    if (mouseButton== LEFT){
      if (tM1c==chooseGet){
        moveTM1=true;
        contador = true;
      }
    }
  }
  if(moveTM1==true){
  tM1x=mouseX-mouseTM1Xi;
  tM1y=mouseY-mouseTM1Yi;
  }
  switch( modulotM1){
    case 4:
    if (tM1x<=c+2 && tM1x>=c-2 && tM1y <=b+2  && tM1y >=b-2){
      tM1x=c;
      tM1y=b;
    }
    case 6:
    if (tM1x<=e+2 && tM1x>=e-2 && tM1y <=d+2  && tM1y >=d-2){
      tM1x=e;
      tM1y=d;
    }
    case 0:
    if (tM1x<=c+2 && tM1x>=c-2 && tM1y <=a+2  && tM1y >=a-2){
      tM1x=c;
      tM1y=a;
    }
    case 2:
    if (tM1x<=(-i)+2 && tM1x>=(-i)-2 && tM1y <=d+2  && tM1y >=d-2){
      tM1x=-i;
      tM1y=d;
    }
  }
  pushMatrix();
  translate(tM1x+150, tM1y-75);
  
  rotate( radians(tM1r*45));
  translate(-(tM1x+150), -(tM1y-75));  
  translate(tM1x, tM1y);
  triangle (0,0,150,-150,300,0); 
  
  popMatrix();
  
  //Triangulo Mayor 2 (tM2)
  
  fill(tM2c);
  
  if ( mousePressed == true && contador ==false){
    if (mouseButton== LEFT){
      if (tM2c==chooseGet){  
      moveTM2  = true;
      contador = true;
      }
    }
  }
  
  if (moveTM2==true){
    tM2x=mouseX-mouseTM2Xi;
    tM2y=mouseY-mouseTM2Yi;
  }
  switch( modulotM2){
    case 0:
    if (tM2x<=a+2 && tM2x>=a-2 && tM2y <=c+2  && tM2y >=c-2){
      tM2x=a;
      tM2y=c;
    }
    case 2:
    if (tM2x<=d+2 && tM2x>=d-2 && tM2y <=e+2  && tM2y >=e-2){
      tM2x=d;
      tM2y=e;
    }
    case 4:
    if (tM2x<=b+2 && tM2x>=b-2 && tM2y <=c+2  && tM2y >=c-2){
      tM2x=b;
      tM2y=c;
    }
    case 6:
    if (tM2x<=d+2 && tM2x>=d-2 && tM2y <=(-i)+2  && tM2y >=(-i)-2){
      tM2x=d;
      tM2y=-i;
    }
  }
  pushMatrix();
  translate(tM2x-75, tM2y+150);
  
  rotate( radians(tM2r*45));
  translate(-(tM2x-75), -(tM2y+150));  
  translate(tM2x, tM2y);
  triangle (0,0,-150,150,0,300); 
  
  popMatrix();
  
  //Triangulo Medio (tM)
  
  fill(tMc);
  
  if(mousePressed== true && contador ==false){
    if (mouseButton== LEFT){
      if (tMc == chooseGet){  
        moveTM= true;
        contador = true;
      }
    }
  }
  
  if (moveTM == true){
    tMx=mouseX-mouseTMXi;
    tMy=mouseY-mouseTMYi;
  }
  switch(modulotM){
    case 0:
      if (tMx<=c+2 && tMx>=c-2 && tMy <=c+2  && tMy >=c-2){
        tMx=c;
        tMy=c;
      }
    break;
    case 2:
      if (tMx<=f+5 && tMx>=f+1 && tMy <=c-1 && tMy>=c-5){
        tMx=f+3;
        tMy=c-3;
      }
    break;
    case 4:
      if (tMx<=f+7 && tMx>=f+3 && tMy <=f+2 && tMy >=f-2){
        tMx=f+5;
        tMy=f;
      }
    break;
    case 6:
      if (tMx<=c+5 && tMx>=c+1 && tMy <=f+4  && tMy >=f){
        tMx=c+3;
        tMy=f+2;
      }
    break;
  }
  pushMatrix();
    
  /*translate(tMx, tMy);
     
  rotate( radians(tMr*45));
  
  triangle (0,0,0,150,150,0);
 */
  translate(tMx+50, tMy+52.5);
  
  rotate( radians(tMr*45));
  translate(-(tMx+50), -(tMy+52.5));  
  translate(tMx, tMy);
  triangle (0,0,0,150,150,0); 
  
  popMatrix();
  
  //Triangulo menor 1 (tm1)
  
  fill(tm1c);  
  
  if(mousePressed == true && contador ==false){
    if (mouseButton== LEFT){
      if (tm1c== chooseGet){
      moveTm1 = true;
      contador = true;
      }
    }
  }
  
  if (moveTm1==true){
    tm1x=mouseX-mouseTm1Xi;
    tm1y=mouseY-mouseTm1Yi;
  }
switch (modulotm1){
    case 6:
      if( (tm1x<=k && tm1x>=k-4 && tm1y <=o  && tm1y >=o-4)){
        tm1x=k-2;
        tm1y=o-2;
      }
      if (tm1x<=j+2 && tm1x>=j-2 && tm1y<=p && tm1y>= p-4){
        tm1x=j;
        tm1y=p-2;
      }
      if (tm1x<=f && tm1x>=f-4 && tm1y<=o && tm1y>=o-4){
        tm1x=f-2;
        tm1y=o-2;
      }
    break;
    case 4:
      if(tm1x<=h+2 && tm1x>=h-2 && tm1y<=b+2 && tm1y>=b-2){
        tm1x=h;
        tm1y=b;
      }
      if (tm1x<=b+12 && tm1x>=b-8 && tm1y<=d+2 && tm1y>=d-2){
        tm1x=b+10;
        tm1y=d;
      }
      if (tm1x<=h+2 && tm1x>=h-2 && tm1y<=a+2 && tm1y>=a-2){
        tm1x=h;
        tm1y=a;
      }
    
    break;
    case 2:
      if(tm1x<=k && tm1x>=k-4 && tm1y <=j-8  && tm1y >=j-12){
        tm1x=k-2;
        tm1y=j-10;
      }
      if (tm1x<=j+2 && tm1x>=j-2 && tm1y<=n+5 && tm1y>=n+1){
        tm1x=j;
        tm1y=n+3;
      }
      if (tm1x<=f-1 && tm1x>=f-5 && tm1y<=j-8 && tm1y>=j-12){
        tm1x=f-3;
        tm1y=j-10;
      }
    break;
    case 0:
      if(tm1x<c+2 && tm1x>=c-2 && tm1y<=a+2  && tm1y>=a-2){
        tm1x=c;
        tm1y=a;
      }
      if (tm1x<=e+2 && tm1x>=e-2 && tm1y<=d+2 && tm1y>=d-2){
        tm1x=e;
        tm1y=d;
      }
      if (tm1x<=c+2 && tm1x>=c-2 && tm1y<=b+2 && tm1y>=b-2){
        tm1x=c;
        tm1y=b;
      }
    break;
  }
  pushMatrix();
  translate(tm1x+32.5, tm1y-75);
  
  rotate( radians(tm1r*45));
  translate(-(tm1x+32.5), -(tm1y-75));  
  translate(tm1x, tm1y);
  triangle (0,0,75,-75,0,-150); 
  
  popMatrix();
  //Triangulo menor 2 (tm2)

  fill(tm2c);  
  
  if(mousePressed == true && contador ==false){
    if (mouseButton== LEFT){
    if (tm2c == chooseGet){
      moveTm2 = true;
      contador = true;
      }
    }
  } 
  
  if(moveTm2 == true){
    tm2x = mouseX-mouseTm2Xi;
    tm2y = mouseY-mouseTm2Yi;
  }
  switch (modulotm2){
    case 0:
      if( (tm2x<=b+2 && tm2x>=b-2 && tm2y <=c+2  && tm2y >=c-2)){
        tm2x=b;
        tm2y=c;
      }
      if (tm2x<=e+2 && tm2x>= e-2 && tm2y<=e+2 && tm2y>= e-2){
        tm2x=e;
        tm2y=e;
      }
      if (tm2x<=c+2 && tm2x>= c-2 && tm2y<=c+2 && tm2y>= c-2){
        tm2x=c;
        tm2y=c;
      }
    break;
    case 2:
      if(tm2x<=f && tm2x>=f-4 && tm2y <=f && tm2y >=f-4){
        tm2x=f-2;
        tm2y=f-2;
      }
      if (tm2x<=j+2 && tm2x>= j-2 && tm2y<=j+2 && tm2y>=j-2){
        tm2x=j;
        tm2y=j;
      }
      if (tm2x<=f && tm2x>=f-4 && tm2y<=k && tm2y>=k-4){
        tm2x=f-2;
        tm2y=k-2;
      }
    break;    
    case 4:
      if(tm2x<=c+2 && tm2x>=c-2 && tm2y <=d+12  && tm2y >=d+8){
        tm2x=c;
        tm2y=d+10;
      }
      if (tm2x<=e+2 && tm2x>= e-2 && tm2y<=b+12 && tm2y>=b+8){
        tm2x=e;
        tm2y=b+10;
      }
      if (tm2x<=b+2 && tm2x>=b-2 && tm2y<=d+12 && tm2y>=d+8){
        tm2x=b;
        tm2y=d+10;
      }
    break;
    case 6:
      if(tm2x<10 && tm2x>=6 && tm2y <=f  && tm2y >=f-4){
        tm2x=8;
        tm2y=f-2;
      }
      if (tm2x<=l+5 && tm2x>= l+1 && tm2y<=j+2 && tm2y>=j-2){
        tm2x=l+3;
        tm2y=j;
      }
      if (tm2x<=10 && tm2x>=6 && tm2y<=k && tm2y>= k-4){
        tm2x=8;
        tm2y=k-2;
      }
    break;
  }
  
  pushMatrix();
  translate(tm2x+75, tm2y+32.5);
  
  rotate( radians(tm2r*45));
  translate(-(tm2x+75), -(tm2y+32.5));  
  translate(tm2x, tm2y);
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
  
  if ( tm2x<=-45 || tm2y>=585 || tm2y<=15 || tm2x>=985){
    tm2x = 550;
    tm2y = 375;
  }
  
  if ( tM1x<=-90 || tM1y>=585 || tM1y<=15 || tM1x>=985){
    tM1x = 375;
    tM1y = 575;
  }
  
  if ( tM2x<=15 || tM2y>=585 || tM2y<=-90 || tM2x>=985){
    tM2x = 850;
    tM2y = 275;
  }
  
  if ( tMx<=15 || tMy>=585 || tMy<=15 || tMx>=985){
    tMx = 300;
    tMy = 425;
  }

  //Moving piece
  switch( counter2 % 7){
    case 1:    
      movekTm1=true;
      fill(tm1c-1);
      triangle(800,60,850,60,825,85);
      break;
    case 2:
      movekTm2=true;
      fill(tm2c-1);
      triangle(800,60,850,60,825,85);
      break;
    case 3:
      movekTM=true;
      fill(tMc-1);
      triangle(800,60,850,60,825,85);
      break;
    case 4:
      movekTM1=true;
      fill(tM1c-1);
      triangle(800,60,850,60,825,85);
      break;
    case 5:
      movekTM2=true;
      fill(tM2c);
      triangle(800,60,850,60,825,85);
      break;
    case 6:
      movekCua=true;
      fill(cuac);
      rect(810,60,30,30);
      break;
    case 0:
      movekCue=true;
      fill (cuec-1);
      quad(800,60,830,60,850,80,820,80);
      break;  
  }
  if(movekCue){
    if(modulo2cuey==3){
      cuey-=1;
    }
    if(modulo2cuex==3){
      cuex-=1;
    }
  }
  if(movekCua){
    if(modulo2cuay==3){
      cuay-=1;
    }
    if(modulo2cuax==3){
      cuax-=1;
    }
  }
  if(movekTm1){
    if(modulo2tm1y==3){
      tm1y-=1;
    }
    if(modulo2tm1x==3){
      tm1x-=1;
    }
  }
  if(movekTm2){
    if(modulo2tm2y==3){
      tm2y-=1;
    }
    if(modulo2tm2x==3){
      tm2x-=1;
    }
  }
  if(movekTM1){
    if(modulo2tM1y==3){
      tM1y-=1;
    }
    if(modulo2tM1x==3){
      tM1x-=1;
    }
  }
  if(movekTM2){
    if(modulo2tM2y==3){
      tM2y-=1;
    }
    if(modulo2tM2x==3){
      tM2x-=1;
    }
  }
  
  if(movekTM){
    if(modulo2tMy==3){
      tMy-=1;
    }
    if(modulo2tMx==3){
      tMx-=1;
    }
  }
   println(modulo2tMy, modulo2tMx);
  //Instrucciones
  
  fill(40);
  
  textSize(40);
  text( "Tangram", 400,80);
  
  textSize(15);
  text( mouseX, 810,590);
  text ("Coord : X=", 725,590);
  text ("Y=", 870,590);
  text(mouseY,900,590);
  
  
  
  loadPixels();
  for (int i = 0; i < (width*height)-width; i++) {
    if (pixels[i] == negro) {
      counter += 1;
    }
  }
  
  updatePixels();
  if (counter<30){
    win = true;
  }else{
    win = false;
  }
  if (win == true){
    textSize(40);
  text("¡Felicidades!, ¡Ganaste!.", 100, 450);
  }else{
    text(" ", 100, 450);
  }
  }
}

 void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if ( moveTm1){
     tm1r +=e;
   }
  
   if ( moveTm2){
     tm2r +=e;
   }
   
   if ( moveTM){
      tMr +=e;
   }
   
   if ( moveTM1){
      tM1r +=e;
   }
    
   if ( moveTM2){
      tM2r+= e;
   }
    
   if ( moveCua){
      cuar+=e;
   }
    
   if ( moveCue){
      cuer+=e;
   }
 }

void mouseReleased(){
  moveTm2    = false;
  moveTm1    = false;
  moveTM     = false;
  moveTM2    = false;
  moveTM1    = false;
  moveCua    = false;
  moveCue    = false;
  contador   = false;
  win        = false;
  //rotateCount =    0;
}

void mousePressed(){
     mouseTM1Xi=mouseX-tM1x;
     mouseTM1Yi=mouseY-tM1y;
     mouseTM2Xi=mouseX-tM2x;
     mouseTM2Yi=mouseY-tM2y;
     mouseTMXi =mouseX-tMx;
     mouseTMYi =mouseY-tMy;
     mouseTm1Xi=mouseX-tm1x;
     mouseTm1Yi=mouseY-tm1y;
     mouseTm2Xi=mouseX-tm2x;
     mouseTm2Yi=mouseY-tm2y;
     mouseCuaXi=mouseX-cuax;
     mouseCuaYi=mouseY-cuay;
     mouseCueXi=mouseX-cuex;
     mouseCueYi=mouseY-cuey;
   }
   
void keyPressed(){  
   if (key == TAB){
    counter2 += 1;
   }
     if(contador){
       if (key == 'q'){
         if ( moveTm1){
          tm1r-=1;
         }
      
         if ( moveTm2){
          tm2r-=1;
         }
       
         if ( moveTM){
          tMr -=1;
         }
       
         if ( moveTM1){
          tM1r-=1;
         }
        
         if ( moveTM2){
          tM2r-= 1;
         }
        
         if ( moveCua){
          cuar-=1;
         }
          
         if ( moveCue){
          cuer-=1;
         }
       }
       
       if (key == 'e'){
         if ( moveTm1){
          tm1r +=1;
         }
      
         if ( moveTm2){
          tm2r +=1;
         }
       
         if ( moveTM){
          tMr +=1;
         }
       
         if ( moveTM1){
          tM1r +=1;
         }
        
         if ( moveTM2){
          tM2r+= 1;
         }
        
         if ( moveCua){
          cuar+=1;
         }
          
         if ( moveCue){
          cuer+=1;
         }
       }
     }
     
     if(contador==false){
       if (key == 'q'){
         if ( movekTm1){
          tm1r-=1;
         }
      
         if ( movekTm2){
          tm2r-=1;
         }
       
         if ( movekTM){
          tMr -=1;
         }
       
         if ( movekTM1){
          tM1r-=1;
         }
        
         if ( movekTM2){
          tM2r-= 1;
         }
        
         if ( movekCua){
          cuar-=1;
         }
          
         if ( movekCue){
          cuer-=1;
         }
       } 
       if (key == 'e'){
         if ( movekTm1){
          tm1r +=1;
         }
      
         if ( movekTm2){
          tm2r +=1;
         }
       
         if ( movekTM){
          tMr +=1;
         }
       
         if ( movekTM1){
          tM1r +=1;
         }
        
         if ( movekTM2){
          tM2r+= 1;
         }
        
         if ( movekCua){
          cuar+=1;
         }
          
         if ( movekCue){
          cuer+=1;
         }
       }
     }
   if ( key == 'w'){
      cueg= cueg+1;
   }
   
   if (movekTm1){   
     if ( key == CODED){
       switch (keyCode){
         case UP:
          tm1y -= 5;
         break;
         case DOWN:
          tm1y += 5;
         break;
         case LEFT:
          tm1x -= 5;
         break;
         case RIGHT:
          tm1x += 5;  
         break;
       }
     }
   }   
   
   if (movekTm2){   
     if ( key == CODED){
       switch (keyCode){
         case UP:
          tm2y -= 5;
         break;         
         case DOWN:
          tm2y += 5;
         break;
         case LEFT:
          tm2x -= 5;
         break;
         case RIGHT:
          tm2x += 5;
         break;
       }
     }
   }   
   
   if (movekTM1){   
     if ( key == CODED){
       switch (keyCode){
         case UP:
           tM1y -= 5;
         break;
         case DOWN:         
           tM1y += 5;
         break;
         case LEFT:
           tM1x -= 5;
         break;
         case RIGHT:         
           tM1x += 5;
         break;
       }
     }
   }   
   
   if (movekTM2){   
     if ( key == CODED){
       switch (keyCode){
         case UP:
           tM2y -= 5;
         break;
         case DOWN:         
           tM2y += 5;
         break;
         case LEFT:
           tM2x -= 5;
           break;
         case RIGHT:         
           tM2x += 5;
         break;
       }
     }
   }   
   
   if (movekTM){   
     if ( key == CODED){
       switch (keyCode){
         case UP:
           tMy -= 5;
         break;         
         case DOWN:
           tMy += 5;
         break;
         case LEFT:
           tMx -= 5;
         break;
         case RIGHT:
           tMx += 5;
         break;
       }
     }
   }   
   if (movekCua){   
     if ( key == CODED){
       switch (keyCode){
         case UP:
          cuay -= 5;
         break;
         case DOWN:
           cuay += 5;
         break;
         case LEFT:
           cuax -= 5;
         break;
         case RIGHT:
           cuax += 5;
         break;
       }
     }
   }   
   if (movekCue){   
     if ( key == CODED){
       switch (keyCode){
         case UP:
          cuey -= 5; 
         break;  
         case DOWN:
          cuey += 5;
         break;
         case LEFT:
           cuex -= 5;
         break;
         case RIGHT:
           cuex += 5;
         break;
       }
     }
   } 
 }
void keyReleased(){
   movekTm1 = false;
   movekTm2 = false;
   movekTM1 = false;
   movekTM2 = false;
   movekTM  = false;
   movekCua = false;
   movekCue = false;
   win      = false;
   //rotateCount =  0;
}    