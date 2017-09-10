/* en cada carcteristica se usa un codigo de 3 a 4 letras estas son cada una de las piezas:
- tm1 es el triangulo menor 1 o triangulo azul
- tm2 es el triangulo menor 2 o triangulo morado
- tM1 es el triangulo mayor 1 o triangulo verde
- tM2 es el triangulo mayor 2 o triangulo naranja
- tM es el triangulo mediano o triangulo aamarillo
- cua es el cuadrado o cuadrilatero rojo
- cua es el cuadrilatero o cuadrilatero azul
El otro indicativo muestra a que valor se hace referencia como rotación(r), posicion inicial en x(x),posicion inicial en y(y)
*/

//Variables globales
  //Miniaturas y imagen de fondo.(solo declaración).
    PImage fondo, nivel1, nivel2, nivel3, nivel4, nivel5, nivel6, nivel7, nivel8, nivel9, nivel10;
  //Variables para guardar la posicion desde la que se tomo la ficha y moverla desde aquel punto
    int mouseTM1Xi,mouseTM1Yi, mouseTM2Xi, mouseTM2Yi, mouseTMXi, mouseTMYi, mouseTm1Xi, mouseTm1Yi, mouseTm2Xi, mouseTm2Yi, mouseCuaXi, mouseCuaYi, mouseCueXi, mouseCueYi;
  //Contadores: moveKey determina que ficha se esta moviendo, se maneja con el tabulador; el contadorvictoria cuenta la cantidad de pixeles negros para determinar si el jugador gano
  //El contador niveles permite el paso al siguiente nivel desde un nivel ya superado
    int contadorMoveKey, contadorVictoria,contadorNiveles; 
  //Determina que ficha se esta moviendo y evita que teniendo una ficha se seleccione otra
    boolean contador;
  // Simple booleano que se activa al tener el contadorVictoria<200 pixeles
    boolean win;
  // Booleanos que determinan si una ficha se esta moviendo con el teclado
    boolean movekTm1, movekTm2, movekTM1, movekTM2, movekTM, movekCua, movekCue;
  // Variables para la rotacipon de las fichas y el espejo para el paralelogramo(cueg)
    int   tm1r, tm2r, tM1r, tM2r, tMr, cuar, cuer, cueg;
  //Color de cada una de las fichas y color de la pista de cada nivel, y el green determina un color verde
    color cuac = color(255,0,0), cuec  = color(0,0,204), tm1c = color(51,153,255), tm2c = color(127,0,255), tMc = color(255,255,51), tM1c  = color(0,204,102), tM2c  = color(255,128,0),negro = color(0),green= color(15,255,46);
  // Variables Generales de cada pieza, los valores x y y determinan el valor inicial del punto desde el cual se dibujara la figura, y el valor move determina si una ficha se esta moviendo
    boolean moveCue; int cuex,cuey;
    boolean moveCua; int cuax,cuay;
    boolean moveTM1; int tM1x,tM1y;
    boolean moveTM2; int tM2x,tM2y;
    boolean moveTM ; int tMx, tMy;
    boolean moveTm1; int tm1x,tm1y;
    boolean moveTm2; int tm2x,tm2y;
  //Define que nivel esta siendo ejecutado
    int nivel;
//Establece el tamaño del campbass y llama el valor de las miniaturas de las carpetas del tangram
void setup(){
  size (1000,599);
  fondo= loadImage("fondo1.jpg");
  nivel1= loadImage("miniatura lvl1.png");
  nivel2= loadImage("miniatura lvl2.png");
  nivel3= loadImage("miniatura lvl3.png");
  nivel4= loadImage("miniatura lvl4.png");
  nivel5= loadImage("miniatura lvl5.png");
  nivel6= loadImage("miniatura lvl6.png");
  nivel7= loadImage("miniatura lvl7.png");
  nivel8= loadImage("miniatura lvl8.png");
  nivel9= loadImage("miniatura lvl9.png");
  nivel10= loadImage("miniatura lvl10.png");
};

//Funcion que es llamada 60 veces por segundo y cada cambio y o movimiento se realiza inmediatamente
void draw(){
  //Detecta elcolor del pixel debajo del mouse
  int chooseGet = get(mouseX,mouseY);
  //Menu principal
    if (nivel==0){
      background (fondo);
      //BOTON JUGAR
        fill(green);
        rectMode(CENTER);
        rect(500,70,150,50);
        rectMode(CORNER);
        textSize(20);
        fill(10);
        textAlign(CENTER,CENTER);
        text("JUGAR",500,70);
        textAlign(LEFT,CENTER);
        if (chooseGet == green && mousePressed&& contador==false){
          nivel = 1;
        }
      //BOTON INSTRUCCIONES
        fill(cuac+1);
        rectMode(CENTER);
        rect(400,170,170,50);
        rectMode(CORNER);
        textSize(20);
        fill(10);
        textAlign(CENTER,CENTER);
        text("INSTRUCCIONES",400,170);
        textAlign(LEFT,CENTER);
        if (chooseGet == cuac+1 && mousePressed&& contador==false){
          nivel = 12;
        }
      //BOTON CREDITOS
        fill(cuec+1);
        rectMode(CENTER);
        rect(600,170,170,50);
        rectMode(CORNER);
        textSize(20);
        fill(10);
        textAlign(CENTER,CENTER);
        text("CREDITOS",600,170);
        textAlign(LEFT,CENTER);
        if (chooseGet == cuec+1 && mousePressed && contador==false){
          nivel = 13;
        }
        if(mousePressed){
        contador =true;
        };
      //LETRERO TANGRAM
        textSize(100);
        fill (0);
        text("Tangram",300,300);
        fill(10);
    }
  //Interfaz de niveles  
    if (nivel==1){
      background (fondo);
      //Letrero NIVELES
        fill (0);
        textSize(100);
        textAlign(CENTER,CENTER);
        text("NIVELES",500,80);
        textAlign(LEFT,CENTER);
      //MINIATURAS IMAGENES
        pushMatrix();
        scale(0.6);
        image (nivel1, 225,250);
        image (nivel2, 535,250);
        image (nivel3, 825,250);
        image (nivel4, 1075,250);
        image (nivel5, 1325,250);
        image (nivel6, 225,559);
        image (nivel7, 535,559);
        image (nivel8, 825,559);
        image (nivel9, 1075,559);
        image (nivel10, 1325,559);
        popMatrix();
      //MINIATURAS TEXTOS
        textSize(20);
        fill (0);
        text("Nivel 1",165,280);
        text("Nivel 2",345,280);
        text("Nivel 3",530,280);
        text("Nivel 4",670,280);
        text("Nivel 5",830,280);
        text("Nivel 6",165,465);
        text("Nivel 7",345,465);
        text("Nivel 8",530,465);
        text("Nivel 9",670,465);
        text("Nivel 10",830,465);
      //DELIMITACION DE AREAS PARA SELECCION DEL NIVEL Y POSICION INCIAL DE FICHA EN CADA NIVEL
        //NIVEL 1
        if (mouseX>=140 &&mouseX<=255 && mouseY>=155 && mouseY<=285 && mousePressed && contador==false){
            nivel=2;
            contadorNiveles=2;
          cuex= 900; cuey= 465; cuax= 770; cuay= 140; tM1x=  70; tM1y= 560; tM2x= 850; tM2y= 275; tMx = 145; tMy= 225; tm1x=  35; tm1y=475; tm2x= 435; tm2y=485;
          cuer=0; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
        }
        //NIVEL 2
        if (mouseX>=300 &&mouseX<=450 && mouseY>=155 && mouseY<=285 && mousePressed&&contador==false){
          nivel=3;
          contadorNiveles=3;
          cuex= 900; cuey= 465; cuax=80; cuay= 355; tM1x= 85; tM1y= 575; tM2x= 875; tM2y= 190; tMx = 25; tMy= 230; tm1x= 190; tm1y=435; tm2x= 435; tm2y=485;
          cuer=0; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
        }
        //NIVEL 3
        if (mouseX>=490 &&mouseX<=620 && mouseY>=155 && mouseY<=285 && mousePressed&&contador==false){
          nivel=4;
          contadorNiveles=4;
          cuex= 900; cuey= 315; cuax=110; cuay= 420; tM1x= 710; tM1y= 490; tM2x= 805; tM2y= 80; tMx = 15; tMy= 145; tm1x= 650; tm1y=435; tm2x= 35; tm2y=310;
          cuer=0; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
        }
        //NIVEL 4
        if (mouseX>=650 &&mouseX<=765 && mouseY>=155 && mouseY<=285 && mousePressed&&contador==false){
          nivel=5;
          contadorNiveles=5;
          cuex= 155; cuey= 305; cuax=110; cuay= 420; tM1x= 690; tM1y= 490; tM2x= 320; tM2y= 265; tMx = 755; tMy= 155; tm1x= 650; tm1y=450; tm2x= 35; tm2y=310;
          cuer=2; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
        }
        //NIVEL 5
        if (mouseX>=790 &&mouseX<=920 && mouseY>=155 && mouseY<=285 && mousePressed&&contador==false){
          nivel=6;
          contadorNiveles=6;
          cuex= 155; cuey= 305; cuax=110; cuay= 420; tM1x= 690; tM1y= 490; tM2x= 741; tM2y= 105; tMx =275; tMy= 205; tm1x= 225; tm1y=505; tm2x= 35; tm2y=310;
          cuer=2; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
        }
        //NIVEL 6
        if (mouseX>=140 &&mouseX<=255 && mouseY>=325 && mouseY<=470 && mousePressed&&contador==false){
            nivel=7;
            contadorNiveles=7;
          cuex= 900; cuey= 465; cuax= 770; cuay= 140; tM1x=  8; tM1y= 590; tM2x= 555; tM2y= 35; tMx = 40; tMy= 170; tm1x=  90; tm1y=475; tm2x= 770; tm2y=420;
          cuer=0; cuar=0;tm1r=2;tm2r=0;tM2r=1;tM1r=0;tMr=0;
        }
        //NIVEL 7
        if (mouseX>=300 &&mouseX<=450 && mouseY>=325 && mouseY<=470 && mousePressed&&contador==false){
            nivel=8;
            contadorNiveles=8;
          cuex= 900; cuey= 465; cuax= 800; cuay= 325; tM1x=  70; tM1y= 560; tM2x= 735; tM2y= 70; tMx = 145; tMy= 225; tm1x=  35; tm1y=475; tm2x= 575; tm2y=485;
          cuer=0; cuar=0;tm1r=0;tm2r=0;tM2r=-2;tM1r=0;tMr=0;
        }
        //NIVEL 8
        if (mouseX>=490 &&mouseX<=620 && mouseY>=325 && mouseY<=470 && mousePressed&&contador==false){
            nivel=9;
            contadorNiveles=9;
          cuex= 900; cuey= 465; cuax= 800; cuay= 215; tM1x=  70; tM1y= 560; tM2x= 625; tM2y= 365; tMx = 105; tMy= 250; tm1x= 35; tm1y=505; tm2x= 730; tm2y=400;
          cuer=0; cuar=0;tm1r=0;tm2r=0;tM2r=2;tM1r=0;tMr=0;
        }
        //NIVEL 9
        if (mouseX>=650 &&mouseX<=765 && mouseY>=325 && mouseY<=470 && mousePressed&&contador==false){
            nivel=10;
            contadorNiveles=10;
          cuex= 900; cuey= 465; cuax= 800; cuay= 140; tM1x=  70; tM1y= 560; tM2x= 195; tM2y= 95; tMx = 735; tMy= 360; tm1x= 35; tm1y=505; tm2x= 575; tm2y=485;
          cuer=0; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
        }
        //NIVEL 10
        if (mouseX>=790 &&mouseX<=920 && mouseY>=325 && mouseY<=470 && mousePressed &&contador==false){
          nivel=11;
          cuex= 900; cuey= 465; cuax= 770; cuay= 140; tM1x= 225; tM1y= 270; tM2x= 155; tM2y= 95; tMx = 735; tMy= 360; tm1x= 35; tm1y=505; tm2x= 240; tm2y=485;
          cuer=0; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
        }
        
        
      //BOTON MENU
        fill(green+1);
        rectMode(CENTER);
        rect(500,550,150,50);
        rectMode(CORNER);
        fill(0);
        textSize(20);
        textAlign(CENTER,CENTER);
        text("MENU",500,550);
        textAlign(LEFT,CENTER);
        if(chooseGet==green+1 && mousePressed && contador==false){
          nivel=0;
        }
        if(mousePressed){
        contador =true;
        }
  }
  
  //INTERFAZ INSTRUCCIONES
  if(nivel==12){
    background(fondo);
    fill (0);
    textSize(100);
    textAlign(CENTER,CENTER);
    text("NIVELES",500,80);
    textAlign(LEFT,CENTER);
    textSize(25);
    fill(235,13,13);
    text("OBJETIVO",20,165);
    textSize(15);
    fill (0);
    text("¡Bienvenido!, el tangram es un juego de procedencia china que consta de 7 fichas que deben ser colocadas en cierta forma",20,200);
    text("para formar figuras especificas, en este juego tendras que mover y rotar las fichas para cubrir la silueta negra que hay en cada",20,230);
    text("nivel al llenar la figura activaras un boton para que pases al siguiente nivel y tendras dos botones para poder ir al menu",20,260);
    text("y al menu de niveles.",20,290);
    textSize(25);
    fill(235,13,13);
    text("MOVIMIENTO",20,325);
    textSize(15);
    fill (0);
    text("Para mover una ficha puedes seleccionarla con el mouse y moverla, tambien tienes la posibilidad de moverla con el teclado,",20,360);
    text("para escoger la pieza que estas moviendo con el teclado presiona la ficha 'TAB', en la parte superior derecha veras",20,390);
    text("cual ficha estas moviendo, una vez seleccionada puedes mover la ficha con las flechas.",20,420);
    textSize(25);
    fill(235,13,13);
    text("ROTACIÓN Y EFECTO ESPEJO",20,455);
    textSize(15);
    fill (0);
    text("Para rotar una ficha si la estas moviendo con el mouse gira la ficha con la rueda o presiona 'q' para girarla hacia",20,490);
    text("el lado izquierdo y 'e' para la derecha si no tienes ninguna ficha seleccionada la ficha que estes moviendo con el",20,520);
    text("teclado rotara de la misma manera con 'q' y 'e', para girar como un 'efecto espejo' el paralelogramo azul presiona 'w'.",20,550);
    
    //BOTON MENU
        fill(green+1);
        rectMode(CENTER);
        rect(850,90,150,50);
        rectMode(CORNER);
        fill(0);
        textSize(20);
        textAlign(CENTER,CENTER);
        text("MENU",850,90);
        textAlign(LEFT,CENTER);
        if(chooseGet==green+1 && mousePressed && contador==false){
          nivel=0;
        }
        if(mousePressed){
        contador =true;
        }
  }
  //INTERFAZ CREDITOS
  if(nivel==13){
    //TEXTO
      background(fondo);
      fill (0);
      textSize(100);
      textAlign(CENTER,CENTER);
      text("CREDITOS",500,80);
      textAlign(LEFT,CENTER);
      textSize(25);
      fill(235,13,13);
      textAlign(CENTER,CENTER);
      text("DESARROLLADOR",500,215);
      textSize(15);
      fill (0);
      text("Juan Pablo Duque Escobar",500,250);
      textSize(25);
      fill(235,13,13);
      text("COLABORADORES",500,375);
      textSize(15);
      fill (0);
      text("Andres Felipe Medina Ealo",500,410);
      text("Juan Diego Plaza Gomez",500,440);
      textAlign(LEFT,CENTER);
    //BOTON MENU
      fill(green+1);
      rectMode(CENTER);
      rect(500,550,150,50);
      rectMode(CORNER);
      fill(0);
      textSize(20);
      textAlign(CENTER,CENTER);
      text("MENU",500,550);
      textAlign(LEFT,CENTER);
      if(chooseGet==green+1 && mousePressed && contador==false){
        nivel=0;
      }
      if(mousePressed){
      contador =true;
      }
  }
  
  //DIBUJOS DE SILUETAS DE CADA NIVEL
    if(nivel==2){
      noStroke();
      background (fondo);
      fill(negro);
      rect (350,150, 300,300);
    }
    if(nivel==3){
      background (fondo);
      fill(negro);
      quad (430,450,580,450,805,225,205,225);
      triangle(430,225,580,225,505,150);
    }
    if(nivel==4){
      background (fondo);
      fill(negro);
      stroke(2);
      quad(730,515,430,515,280,365,580,365);
      quad(325,410,250,335,175,410,250,485);
      quad(250,335,250,185,175,110,175,260);
      quad(250,335,400,335,475,260,325,260);
      triangle(430,515,325,410,220,515);
    }
    if(nivel==5){
      background (fondo);
      fill(negro);
      stroke(2);
      quad(352,575,670,575,565,470,457,470);
      rect(457,470,110,-108);
      quad(457,362,567,362,672,257,355,257);
      rect(355,257,318,-105);  
  }
    if(nivel==6){
      background (fondo);
      fill(negro);
      stroke(2);
      rect(345,535,300,-150);
      triangle(570,385,275,385,420,235);
      quad(570,385,675,385,570,280,465,280);
      rect(465,280,105,-105);
    }
    if(nivel==7){
      background (fondo);
      fill(negro);
      stroke(2);
      triangle(605,365,395,365,500,470);
      triangle(755,515,455,515,605,365);
      triangle(500,470,200,470,350,320);
      triangle(275,245,200,320,200,170);
      triangle(350,320,275,245,350,170);
      quad(755,515,755,365,680,290,680,440);
      quad(350,320,275,245,200,320,275,395);
    }
    if(nivel==8){
      background (fondo);
      fill(negro);
      stroke(2);
      triangle(465,570,465,360,675,360);
      triangle(435,570,435,360,225,360);
      quad(225,360,375,360,450,285,375,210);
      quad(375,210,450,135,675,360,525,360);
    }
    if(nivel==9){
      background (fondo);
      fill(negro);
      stroke(2);
      rect(275,230,420,210);
    }
    
    if(nivel==10){
      background (fondo);
      fill(negro);
      stroke(2);
      rect(385,215,320,210);
      triangle(385,170,385,470,235,320);
    }
    if(nivel==11){
      background (fondo);
      fill(negro);
      stroke(2);
      quad(200,300,410,300,305,405,200,405);
      quad(320,388,470,388,545,313,395,313);
      triangle(455,405,560,405,560,300);
      quad(560,105,560,555,710,555,710,255);
    }
  println(contadorNiveles);
  
  //PLANTILLA DE LAS FICHAS Y MOVIMIENTOS PARA CADA NIVEL DIFERENTE DE 0(MENU), 1(INTERFAZ DE NIVELES), 12(INSTRUCCIONES),13(CREDITOS)
  
  if (nivel !=0 && nivel !=1 && nivel !=12 && nivel !=13){
    
    //REINICIA EL CONTADOR DE VICTORIA PARA QUE ESTE NO SE MANTENGA SUMANDO SINO QUE TENGA EL VALOR CONSTANTE DE LOS PIXELES EN PANTALLA
    contadorVictoria=0;
    
    //DEFINE EL VALOR DEL ESPEJO DEL PARALELOGRAMO
    int moduloCueg = abs((cueg % 2)-1);
    
    // MODULOS DE CADA FICHA PARA QUE AL QUEDAR EN UNA POSICION CON MODULO 5 =3 CORRA UN ESPACIO HACIA ATRAS, ESTO CON EL FIN DE AÑADIR POSTERIORMENTE UN SISTEMA PARA APROXIMAR LAS FICHAS A LA POSICION IDEAL
    int modulo2cuey=abs(cuey%5),modulo2cuex=abs(cuex%5),modulo2cuay=abs(cuay%5),modulo2cuax=abs(cuax%5),modulo2tm1y=abs(tm1y%5),modulo2tm1x=abs(tm1x%5),modulo2tm2y=abs(tm2y%5),modulo2tm2x=abs(tm2x%5),modulo2tM1y=abs(tM1y%5),modulo2tM1x=abs(tM1x%5),modulo2tM2y=abs(tM2y%5),modulo2tM2x=abs(tM2x%5),modulo2tMy=abs(tMy%5),modulo2tMx=abs(tMx%5);     
    
    //BOTON MENU
      fill(tMc+1);
      rectMode(CENTER);
      rect(925,545,120,50);
      rectMode(CORNER);
      textSize(17);
      fill(0,1,1);
      textAlign(CENTER,CENTER);
      text("Menu", 925, 545);
      textAlign(LEFT,CENTER);
      if(chooseGet==(tMc+1)&& mousePressed&&contador==false){
         nivel=0;
      }
    //LETRERO NIVELES
      fill(tM2c+1);
      rectMode(CENTER);
      rect(785,545,120,50);
      rectMode(CORNER);
      textSize(17);
      fill(0,1,1);
      textAlign(CENTER,CENTER);
      text("Niveles", 785, 545);
      textAlign(LEFT,CENTER);
      if(chooseGet==(tM2c+1)&&mousePressed&&contador==false){
        nivel=1;
      }
      
    //DIBUJO DE FICHAS Y MANIPULACION
      //PARALELOGRAMO
        fill (cuec);    
        
        if( mousePressed==true && contador ==false){
          if (mouseButton== LEFT){
            if (cuec == chooseGet){ 
            moveCue= true;
            contador = true;  
            }
          }
        }
         println(cuer);
        if(moveCue==true){
        cuex=mouseX-mouseCueXi;
        cuey=mouseY-mouseCueYi;
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
      println(cuer);
      //TRIANGULO MENOR 1
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
        
        pushMatrix();
        translate(tm1x+32.5, tm1y-75);
        rotate( radians(tm1r*45));
        translate(-(tm1x+32.5), -(tm1y-75));  
        translate(tm1x, tm1y);
        triangle (0,0,75,-75,0,-150); 
        popMatrix();
      
      //TRIANGULO MENOR 2
      
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
        
        pushMatrix();
        translate(tm2x+75, tm2y+32.5);
        rotate( radians(tm2r*45));
        translate(-(tm2x+75), -(tm2y+32.5));  
        translate(tm2x, tm2y);
        triangle (0,0,150,0,75,75); 
        popMatrix();
      
      //TRIANGULO MEDIANO
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
        
        pushMatrix();
        translate(tMx+50, tMy+52.5);
        rotate( radians(tMr*45));
        translate(-(tMx+50), -(tMy+52.5));  
        translate(tMx, tMy);
        triangle (0,0,0,150,150,0); 
        popMatrix();
      
      //TRIANGULO MAYOR 1
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
        
        pushMatrix();
        translate(tM1x+150, tM1y-75);
        rotate( radians(tM1r*45));
        translate(-(tM1x+150), -(tM1y-75));  
        translate(tM1x, tM1y);
        triangle (0,0,150,-150,300,0); 
        popMatrix();
        
      //TRIANGULO MAYOR 2
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
        
        pushMatrix();
        translate(tM2x-75, tM2y+150);
        rotate( radians(tM2r*45));
        translate(-(tM2x-75), -(tM2y+150));  
        translate(tM2x, tM2y);
        triangle (0,0,-150,150,0,300); 
        popMatrix();
      
      //CUADRADO
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
        
        pushMatrix();
        translate(cuax, cuay+75);
        rotate( radians(cuar*45));
        translate(-(cuax), -(cuay+75));  
        translate(cuax, cuay);
        quad (0,0,-75,75,0,150,75,75);
        popMatrix();
       
       if(mousePressed){
      contador=true;
      }
    //RESTRICCION DE SALIDA, (EVITA QUE LAS FICHAS SE SALGAN DEL CAMPBASS)  
      if ( cuax<=-20 || cuay>=620 || cuay<=-20 || cuax>=1020){
        cuax = 100;
        cuay = 425;
      }
      if ( cuex<=-20 || cuey>=620 || cuey<=-20 || cuex>=1100){
        cuex = 900;
        cuey = 575;
      }
      if ( tm1x<=-20 || tm1y>=620 || tm1y<=-20 || tm1x>=1020){
        tm1x = 200;
        tm1y = 575;
      }
      if ( tm2x<=-20 || tm2y>=620 || tm2y<=-20 || tm2x>=1020){
        tm2x = 550;
        tm2y = 375;
      }
      if ( tM1x<=-20 || tM1y>=620 || tM1y<=-20 || tM1x>=1020){
        tM1x = 375;
        tM1y = 575;
      }
      if ( tM2x<=-20|| tM2y>=620 || tM2y<=-20 || tM2x>=1020){
        tM2x = 850;
        tM2y = 275;
      }
      if ( tMx<=-20 || tMy>=620 || tMy<=-20 || tMx>=1020){
        tMx = 300;
        tMy = 425;
      }
  
    //INDICADOR MOVIMIENTO TECLADO (INDICA QUE FICHA SE ESTA MOVIENTO CON EL TECLADO)
      switch (contadorMoveKey % 8){
        case 0:
        break;
        case 1:
          movekCue=true;
          fill (cuec-1);
          quad(800,60,830,60,850,80,820,80);
        break;
        case 2:    
          movekTm1=true;
          fill(tm1c-1);
          triangle(800,60,850,60,825,85);
        break;
        case 3:
          movekTm2=true;
          fill(tm2c-1);
          triangle(800,60,850,60,825,85);
        break;
        case 4:
          movekTM=true;
          fill(tMc-1);
          triangle(800,60,850,60,825,85);
        break;
        case 5:
          movekTM1=true;
          fill(tM1c-1);
          triangle(800,60,850,60,825,85);
        break;
        case 6:
          movekTM2=true;
          fill(tM2c);
          triangle(800,60,850,60,825,85);
        break;
        case 7:
          movekCua=true;
          fill(cuac);
          rect(810,60,30,30);
        break;  
      }
    
    //CORRIGE LA POSICION PARA LA APROXIMACION FUTURA
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
    //LETRERO "TANGRAM" EN LA PARTE SUPERIOR
      fill(40);
      textSize(40);
      text( "Tangram", 400,80);
    
    //lETRERO DE COORDENADAS PARTE INFERIOR
      textSize(15);
      text( mouseX, 810,590);
      text ("Coord : X=", 725,590);
      text ("Y=", 870,590);
      text(mouseY,900,590);
      
    // SISTEMA DE DETECCION DE PARTIDA GANADA
      // DETECCION DE LA CANTIDAD DE PIXELES NEGROS EN LA PANTALLA
        loadPixels();
        for (int i = 0; i < (width*height)-width; i++) {
          if (pixels[i] == negro) {
            contadorVictoria += 1;
          }
        }
        updatePixels();
      
      //ANALIZADOR DE LA CANTIDAD DE PIXELES PARA DECLARAR UNA PARTIDA GANADA
        if (contadorVictoria<200){
          win = true;
        }else{
          win = false;
        }
      
      //NOTIFICACIÓN Y ACCIONES AL RESPECTO
        if (win == true){
          if(nivel ==11){
            textSize(40);
            text("¡Felicidades!, ¡Ganaste!.", 100, 550);
          }
          if(nivel !=11){
            fill(green+5);
            rectMode(CENTER);
            rect(925,475,120,50);
            rectMode(CORNER);
            textAlign(CENTER,CENTER);
            textSize(15);
            fill(0,1,1);
            text("Siguiente Nivel", 925, 475);
            textAlign(LEFT,CENTER);
          }
        }
    }
}

//FUNCION MOUSECLICKED LLAMADA CADA VEZ QUE UN BOTON SE PRESIONA Y SE SUELTA
void mouseClicked(){
  //VARIABLE QUE DETECTA EL COLOR DEL PIXEL JUSTO DEBAJO DEL MOUSE 
    int chooseGet = get(mouseX,mouseY);
  
    //CONDICIONALES QUE DETECTAN EN QUE NIVEL ESTA EL JUGADOR Y SI PRESIONA EL BOTON DE SIGUIENTE NIVEL LO LLEVA JUSTAMENTE AL SIGUIENTE NIVEL
    if(chooseGet==(green+5)&& nivel==2){
     contadorNiveles=3;
    }
    if(chooseGet==(green+5)&& nivel==3){
      contadorNiveles=4;
    }
    if(chooseGet==(green+5)&& nivel==4){
      contadorNiveles=5;
    }
    if(chooseGet==(green+5)&& nivel==5){
      contadorNiveles=6;
    }
    if(chooseGet==(green+5)&& nivel==6){
      contadorNiveles=7;
    }
    if(chooseGet==(green+5)&& nivel==7){
      contadorNiveles=8;
    }
    if(chooseGet==(green+5)&& nivel==8){
      contadorNiveles=9;
    }
    if(chooseGet==(green+5)&& nivel==9){
      contadorNiveles=10;
    }
    if(chooseGet==(green+5)&& nivel==10){
      contadorNiveles=11;
    }
  //DA LOS VALORES INICIALES Y LLEVA AL SIGUIENTE NIVEL AL PRESIONAR EL BOTON
    if (contadorNiveles==2){
      nivel=2;
      contadorNiveles=2;
      cuex= 900; cuey= 465; cuax= 770; cuay= 140; tM1x=  70; tM1y= 560; tM2x= 850; tM2y= 275; tMx = 145; tMy= 225; tm1x=  35; tm1y=475; tm2x= 435; tm2y=485;
      cuer=0; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
    }
    if (contadorNiveles==3){
      nivel=3;
      contadorNiveles=3;
      cuex= 900; cuey= 465; cuax=80; cuay= 355; tM1x= 85; tM1y= 575; tM2x= 850; tM2y= 275; tMx = 25; tMy= 230; tm1x= 190; tm1y=435; tm2x= 435; tm2y=485;
      cuer=0; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
    }
    if (contadorNiveles==4){
      nivel=4;
      contadorNiveles=4;
      cuex= 900; cuey= 315; cuax=110; cuay= 420; tM1x= 710; tM1y= 490; tM2x= 805; tM2y= 80; tMx = 525; tMy= 155; tm1x= 650; tm1y=435; tm2x= 35; tm2y=310;
      cuer=0; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
    }
    if (contadorNiveles==5){
      nivel=5;
      contadorNiveles=5;
      cuex= 155; cuey= 305; cuax=110; cuay= 420; tM1x= 690; tM1y= 490; tM2x= 320; tM2y= 265; tMx = 755; tMy= 155; tm1x= 650; tm1y=450; tm2x= 35; tm2y=310;
      cuer=2; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
    }
    if (contadorNiveles==6){
      nivel=6;
      contadorNiveles=6;
      cuex= 155; cuey= 305; cuax=110; cuay= 420; tM1x= 690; tM1y= 490; tM2x= 741; tM2y= 105; tMx = 825; tMy= 155; tm1x= 225; tm1y=505; tm2x= 35; tm2y=310;
      cuer=2; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
    }
    if (contadorNiveles==7){
       nivel=7;
       contadorNiveles=7;
       cuex= 900; cuey= 465; cuax= 770; cuay= 140; tM1x=  8; tM1y= 590; tM2x= 555; tM2y= 35; tMx = 40; tMy= 170; tm1x=  90; tm1y=475; tm2x= 770; tm2y=420;
       cuer=0; cuar=0;tm1r=2;tm2r=0;tM2r=1;tM1r=0;tMr=0;
    }
    if (contadorNiveles==8){
       nivel=8;
       contadorNiveles=8;
       cuex= 900; cuey= 465; cuax= 770; cuay= 140; tM1x=  70; tM1y= 560; tM2x= 850; tM2y= 275; tMx = 145; tMy= 225; tm1x=  35; tm1y=475; tm2x= 575; tm2y=485;
       cuer=0; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
    }
    if (contadorNiveles==9){
      nivel=9;
      contadorNiveles=9;
      cuex= 900; cuey= 465; cuax= 770; cuay= 140; tM1x=  70; tM1y= 560; tM2x= 830; tM2y= 275; tMx = 105; tMy= 250; tm1x= 35; tm1y=505; tm2x= 575; tm2y=485;
      cuer=0; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
    }
    if (contadorNiveles==10){
      nivel=10;
      contadorNiveles=10;
      cuex= 900; cuey= 465; cuax= 800; cuay= 140; tM1x=  70; tM1y= 560; tM2x= 195; tM2y= 95; tMx = 735; tMy= 360; tm1x= 35; tm1y=505; tm2x= 575; tm2y=485;
      cuer=0; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
    }
    if (contadorNiveles==11){
      nivel=11;
      cuex= 900; cuey= 465; cuax= 770; cuay= 140; tM1x= 225; tM1y= 270; tM2x= 155; tM2y= 95; tMx = 735; tMy= 360; tm1x= 35; tm1y=505; tm2x= 240; tm2y=485;
      cuer=0; cuar=0;tm1r=0;tm2r=0;tM2r=0;tM1r=0;tMr=0;
    }
}

//FUNCION QUE DETECTA CADA VEZ QUE LA RUEDA DEL RATON ES GIRADA 
void mouseWheel(MouseEvent event) {
 
  //VARIABLE QUE SUMA UN PUNTO CADA VEZ QUE SE GIRA LA RUEDA DEL RATON  
    float e = event.getCount();
  
  //SUMA LA CANTIDAD DE VECES QUE SE GIRE LA RUEDA A LA VARIBLE DE ROTACION DEPENDIENDO SI LA PIEZA ESTA SELECCIONADA
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

//FUNCION QUE SE ACTIVA AL SOLTAR CUALQUIER BOTON DEL MOUSE
void mouseReleased(){
  
  //EL PRINCIPAL USO ES REINICIALIZAR BOOLEANOS Y LA VARIABLE CONTADOR NIVELES
    moveTm2    = false;
    moveTm1    = false;
    moveTM     = false;
    moveTM2    = false;
    moveTM1    = false;
    moveCua    = false;
    moveCue    = false;
    contador   = false;
    win        = false;
    contadorNiveles=0;
}

//FUNCION QUE ES LLAMADA SIEMPRE QUE EL MOUSE ESTE SIENDO PRESIONADO
void mousePressed(){
  
  //VARIABLES QUE DETERMINAN LA POSICION DESDE LA QUE FUE TOMADA UNA PIEZA PARA PODER MOVERLA DESDE CUALQUIER PUNTO
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

//FUNCION LLAMADA CADA VEZ QUE SE PRESIONA UNA FICHA DEL TECLADO   
void keyPressed(){
  
  //CONDICIONAL EL CUAL AL SER PRESIONADA LA TECLA TABULAR CAMBIA LA FICHA MOVIDA POR EL TECLADO
   if (key == TAB){
    contadorMoveKey += 1;
   }
   // DETECTA SI UNA FICHA SE ESTA MOVIENDO CON ELMOUSE Y HACE QUE LA VARIABLE ROTACION SI SE PRESIONA Q SE RESTA 1  A LA VARIABLE Y CON E SE SUMA 1 PARA PERMITIR LA ROTACION EN AMBOS SENTIDOS
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
     
     //ANALOGAMENTE AL ANTERIOR PROCESO SI NO SE ESTA MOVIENDO UNA FICHA CON EL MOUSE LA FICHA QUE SE ESTE MOVIENDO CON EL TECLADO GIRARA
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
   //GENERA EL EFECTO ESPEO EN EL PARALELOGRAMO AL SER PRESIONADO SE VOLTEA LA FICHA
     if ( key == 'w'){
        cueg= cueg+1;
     }
   
   //PARA CADA FICHA SI ESTA ESTA SIENDO MOVIDA SEGUN LA VARIABLE PERMITE MOVER LA PIEZA CON LAS FLECHAS
     // TRIANGULO MENOR 1
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
     // TRIANGULO MENOR 2
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
     // TRIANGULO MAYOR 1
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
     //TRIANGULO MAYOR 2
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
     //TRIANGULO MEDIANO
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
     //CUADRADO
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
     //PARALELOGRAMO
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
 
 //FUNCION LLAMADA CADA VEZ QUE SE DEA DE PRESIONAR EL TECLADO
void keyReleased(){
  //USADA PARA REINICIAR BOOLEANOS 
    movekTm1 = false;
    movekTm2 = false;
    movekTM1 = false;
    movekTM2 = false;
    movekTM  = false;
    movekCua = false;
    movekCue = false;
    win      = false;
}    