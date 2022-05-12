import java.time.Instant;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Timer;
import java.util.TimerTask;
import java.util.Calendar;

// globale variabler
long sek=0;
int  min=0;
int  time=0;
long unixTime = Instant.now().getEpochSecond();
 Timer T = new Timer();
 
 //fra https:www.section.io/engineering-education/java-timer-tasks/
void startTimer(){
   TimerTask DigitalTimer = new TimerTask(){
     int timercounter1=0;
            @Override
            public void run(){
                timercounter1++;
              
            }
           
        };
        Calendar date = Calendar.getInstance();
        T.scheduleAtFixedRate(DigitalTimer, date.getTime(), 1000);
        
}

void setup() {
  size(640, 360);
  //kalde en metode
  //når man lader slutter med ;
startTimer();
 }

  void draw() {
   // background(0);
    
 
    
    fill(255);
text(showDate(),300,100);
println(showDate());

}
//string der returnerer tiden(Date)
  String showDate() {
    Date date = new java.util.Date(unixTime*1000L);
    // Formateringen af datoen
    SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd-MM-yyyy HH:mm:ss z");
    // Tidszone indsættelse
    sdf.setTimeZone(java.util.TimeZone.getTimeZone("GMT+2"));
    String formattedDate = sdf.format(date);
    fill(0);
    return formattedDate;
    
    //textSize(45);
    //text(formattedDate,30,150)
    
    
  }
