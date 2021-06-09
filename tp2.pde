PImage img1;
PImage img2; 

PFont Fuente; 

String estado;  

color col1; 
color col2;
color col3;
color col4;


float posY; 
float posY2; 
float posY3;
float posY4; 

void setup(){
  
  
  
  size ( 800 , 600 );  
  
  img1 = loadImage( "img1.png" ); 
  img2 = loadImage( "img2.png");
  
  Fuente = loadFont( "Arial-Black-48.vlw");
  
  estado = "titulo" ; 
  
  posY = 650; 
  posY2 = 950;
  posY3 = 1320;
  posY4 = 670;
  
  col1 = color(random(0 , 255), random(0,255) , random(0,255) );
  col2 = color(random(0 , 255), random(0,255) , random(0,255) );
  col3 = color(random(0 , 255), random(0,255) , random(0,255) );
  col4 = color(random(0 , 255), random(0,255) , random(0,255) );
  
  
}

void draw(){
  
  
  // TÍTULO 
  
  if (estado == "titulo" ){ 

  image( img1 , 0 , 0, 800 , 600 );
  textFont(Fuente);
  textAlign(CENTER); 
  textSize(50);
  fill( col1 ) ;
  text( "El Flautista\n de \n Hamelín", 400 , 300) ;
  
  
  if ( mousePressed == true){
    estado =  "Créditos";
  }
  
  }
  
  if (estado == "Créditos"){

    background(255);
    
    
    // PERSONAJES PRINCIPALES. 
    
    
    tint(255);
    image( img1 , 0  , 0 , 800 , 600);
    textAlign(CENTER);
    textSize(40); 
    fill( col2 ) ;
    text("PERSONAJES PRINCIPALES : \n\n el flautista de Hamelín \n El Rey",400 , posY );
    posY = posY-2;
   
   
    //PERSONAJES SECUNDARIOS.
    
    
    textAlign(CENTER);
    textSize(40);
    text("PERSONAJES SECUNDARIOS : \n\n Las ratas \n  Los niños \n Los padres",400 , posY2 );
    posY2 = posY2 -2 ; 
   
    
    //MÚSICA
    
    
    textAlign(CENTER); 
    textSize(40); 
    fill( col3 ) ; 
    text(" MUSICA \n\nKiss:I was made for loving you \n Survivor:The eye of the tiger " , 400 , posY3 );
    posY3 =posY3 - 2 ;  


    if((estado == "Créditos") && (posY3 < -1 )){
    background(0);
    image( img2 , 0 , 0 , 800 , 600 ); 
    textAlign(CENTER); 
    textSize(40); 
    fill( col4 );
    text("DIRECCIÓN \n\n Gómez Agustín - Alias : El Negro \n Legajo 86417/1 \n Comisión 4", 400 , posY4);
    posY4 = posY4 - 2;
    }
        
  }
  
  
  

  
}
