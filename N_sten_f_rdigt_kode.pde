import java.time.Instant;
import java.util.Date;
import java.text.SimpleDateFormat;

// globale variabler
long sek=0;
int  min=0;
int  time=0;
long unixTime = Instant.now().getEpochSecond();

void setup() {
  size(640, 360);


  // kilde: https://stackoverflow.com/questions/17432735/convert-unix-timestamp-to-date-in-java
  //long unixSeconds = 1650524290;
  // convert seconds to milliseconds

 }

  void draw() {
   // background(0);
    
    
    /*
    // hvis jeg har unix time og minusser det med det unix time jeg havde for lidt siden  = så har jeg antallet af sekunder imellem
    sek = Instant.now().getEpochSecond() - unixTime;

    // hver gang jeg har 60 sekunder så start forfra og få et nyt unix time stamp
    if (sek >=60) {
      sek=0;
      min++;
      unixTime = Instant.now().getEpochSecond();
    }
    {
      //Unix timestamp
      int sek=1650522755;
      float min=27508712.583;
      float time= 458478.543;
    }


    //tekst
    textSize(100);
    fill(255);
    text(floor(sek), 440, 180);
    text(floor(min), 280, 180);
    text(floor(time), 120, 180);


    //prikker
    if (sek % 2==0) {
      // ?? farve = color(255);
    }
    // fill (farve);
    fill(255);
    circle(250, 170, 10);
    circle(250, 140, 10);
    circle(410, 170, 10);
    circle(410, 140, 10);
    
    */
    
    fill(175);
text(showDate(),300,100);
println(showDate());

}

  String showDate() {


    Date date = new java.util.Date(unixTime*1000L);
    // the format of your date
    SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd-MM-yyyy HH:mm:ss z");
    // give a timezone reference for formatting (see comment at the bottom)
    sdf.setTimeZone(java.util.TimeZone.getTimeZone("GMT+2"));
    String formattedDate = sdf.format(date);
    fill(0);
    //text(formattedDate,300,150);
    return formattedDate;
  }
