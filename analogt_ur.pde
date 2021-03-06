//En del er inspireret fra eksempel fra Processing



int cx, cy;

float secondsRadius;

float minutesRadius;

float hoursRadius;

float clockDiameter;



void setup() {

size(640, 360);





int radius = min(width, height) / 2;

secondsRadius = radius * 0.72;

minutesRadius = radius * 0.60;

hoursRadius = radius * 0.50;

clockDiameter = radius * 1.8;



cx = width / 2;

cy = height / 2;

}



void draw() {

background(0);



// Baggrunden af uret

//vi har ændret farven af uret//

fill(#936274);

noStroke();

ellipse(cx, cy, clockDiameter, clockDiameter);



// Vinklerne for sin() og cos() starter kl 3

// - HALF_PI for at starte ved top

float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;

float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI;

float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;



// Urvisere

stroke(255);

strokeWeight(1);

line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);

strokeWeight(2);

line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);

strokeWeight(4);

line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);



{



// Timerne på dagen
textSize(20);
fill(252);
text("1",385,60);
text("2",438,110);
text("3",460,180);
text("4",440,250);
text("5",390,305);
text("6",315,330);
text("7",235,305);
text("8",190,250);
text("9",170,180);
text("10",190,110);
text("11",235,60);
text("12",310,45);



endShape();

}

}
