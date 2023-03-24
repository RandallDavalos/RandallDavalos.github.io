//Hola! Me llamo Randall! este es mi primer semaforo

//variable para almacenar tiempo
int tiempoActual = 0;

int tiempoRojo = 5;
int tiempoAmarillo = 3;
int tiempoVerde = 2;

color rojo = color(255, 0, 0);
color amarillo = color(255, 255, 0);
color verde = color(0, 255, 0);

void setup() {
  //size(800, 400);
  fullScreen();
  background(255, 0, 0);
  noCursor();
}

void draw() {
  tiempoActual = millis();
  tiempoActual = tiempoActual / 1000;
  println(tiempoActual);

  if (tiempoActual < tiempoRojo) {
    background(rojo);
  } else if (tiempoActual < tiempoRojo + tiempoAmarillo) {
    background(amarillo);
  } else if (tiempoActual > tiempoRojo + tiempoAmarillo) {
    background(verde);
  }
  
  ellipse(mouseX, mouseY, 10, 10);
}
