PVector puntoMedio, puntoB1, puntoB2,puntoA1,puntoB3;
PVector coordenadasRect;

public void setup(){
size(400,400);
noLoop();
//espacioEntreRect = 20;
puntoB1 =new PVector(0, height/2);//coordenadas del punto B1
puntoB2 =new PVector(width,height/2); // coordenadas del punto B2
puntoMedio =new PVector(width/2,height/2); // coordenadas del punto para el circulo del medio rojo
//puntoA1=new PVector(width/4,height/4); // mp sirven
puntoA1=new PVector((width/5),(height/2)); // coordenadas del punto para el circulo amarillo izq
puntoB3=new PVector((width - 75),(height/2));  // coordenadas del punto para el circulo amarillo derecho
};

public void draw(){
dibujarRectangulo();
dibujaPunto();
};

public void dibujaPunto(){
 float x  = puntoMedio.x; 
 float y= puntoMedio.y;
 float z= 60.0;
 float C1 = puntoA1.x;
 float C2 = puntoA1.y;
 float B3 = puntoB3.x;
 float B4 = puntoB3.y;
 //fill(#FF0303);
strokeWeight(10); //grosor del borde es 10px
fill(0,0,0); //relleno del circulo en negro
stroke(#FF0303); // borde colo rojo
fill(#FF0303);
 //println(" " + puntoMedio.x + " X= "+x);//DIBUJA el circulo
//point(puntoMedio.x,puntoMedio.y); //DIBUJA EL PUNTO NEGRO EN EL MEDIO
//circle(puntoMedio.x,puntoMedio.y); //DIBUJA el circulo
circle(x,y,z); //DIBUJA el circulo al medio
stroke(255,250,100); // color circulo amarillo
fill(255,250,100);
circle(C1,C2,z);  // COLOR circulo  amarillo
fill(#05B206);
stroke(#05B206); // color  circulo verde
circle(B3,B4,z); // circulo circulo amarillo
//println(" " + C2 +" " + C1 + "  " + z);
};

public void dibujarRectangulo(){
color c1 = color(250, 17, 10); // color LINEA negro
        strokeWeight(4);
        fill(c1);
        // hace una rectangulo
        //   rect(x,y, anchoRect, altoRect); //cuidado no va ancho lienzo en vez de anchoderectangulo
         // hace una linea al medio
        stroke(0,0,255); // color borde RGB azul
        fill(0,0,255);  // color relleno de la figura Azul
        line(puntoB1.x, puntoB1.y,puntoB2.x, puntoB2.y);   // dibuja linea AZUL
         //  println(" " + coordenadasRect.x + " X= " + x + " Y= " + coordenadasRect.y +"  " + anchoRect + "  " + altoRect);
};
