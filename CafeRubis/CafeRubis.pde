void setup(){
  
 size(800,600); 
 
 
  fill(255);
  rect ( (width / 2 + border) , border , width / 2 - (border*2) , (height - (border*2)));
 //loads the data
 loadData(); 
 //prints contents to console
 printProducts();
}



int border = 50 ;
//used to find the gap between each button
int interval; 
//used as a counter for the intervals
int i = 0;
//button dimensons;
int bWidth = 200;
int bHeight = 60;
//to know if the mouse was clicked/pressed
boolean clicked;
int choice;

//creates two global array lists
ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

void loadData(){
  //loads the data from the CSV file into a table.
  Table table = loadTable("cafe.csv", "header");
  
  //loop to create a new object then store the object into the arraylist
  for(TableRow r:table.rows())
  {
    Product product = new Product(r);
    products.add(product);
  
  }
  
}

void printProducts(){
  
  //loop which prints out each content
  for ( Product s:products) {
    
    println(s.name);
    println(s.price);
    
  }
  
  
  
  
}


void displayProducts(){
  
  
  interval = (height - (border *2 )) / products.size();
  for ( Product p:products) {
    fill(255);
    //Creates the menu
    rect( border  , (border + (interval * i )) , bWidth , bHeight); 
    textAlign(LEFT);
    fill(0);
    textSize(15);
    text(p.name , border , ((border + bHeight / 2) + ( interval * i)));
    
    textAlign(LEFT);
    textSize(15);
    text(p.price , border + ((width / 2) - border) - bWidth , ((border + bHeight / 2) + ( interval * i)));
    
    //Increments i so the interval changes
    if ( i < (products.size() - 1 )){
      i++;
    }

  }
  
}

void mousePressed(){
    
  if (mouseX > border && mouseX < width / 2 - bWidth && mouseY >  border && mouseY < height - (border + (interval * 0))){
    clicked = true;
    choice = 1;
    
  }
  
  if (mouseX > border && mouseX < width / 2 - bWidth && mouseY >  border && mouseY < height - (border + (interval * 1))){
    clicked = true;
    choice = 2;
  }
  
  if (mouseX > border && mouseX < width / 2 - bWidth && mouseY >  border && mouseY < height - (border + (interval * 2))){
    clicked = true;
    choice = 3;
  }
  
  if (mouseX > border && mouseX < width / 2 - bWidth && mouseY >  border && mouseY < height - (border + (interval * 3))){
    clicked = true;
    choice = 4;
  }
  
  if (mouseX > border && mouseX < width / 2 - bWidth && mouseY >  border && mouseY < height - (border + (interval * 4))){
    clicked = true;
    choice = 5;
  }
  
  if (mouseX > border && mouseX < width / 2 - bWidth && mouseY >  border && mouseY < height - (border + (interval * 5))){
    clicked = true;
    choice = 6;
  }
  
  if (mouseX > border && mouseX < width / 2 - bWidth && mouseY > (height - border ) && mouseY < height - (border + (interval * 6))){
    clicked = true;
    choice = 7;
  }
    
  
  
  
  if(clicked && choice == 1 ){
    //bill.add(p);
    fill(0);
    textAlign(CENTER);
    text("You clicked something", (width / 2) + (width / 4), height / 2);
  }
    
  if(clicked && choice == 4 ){
    //bill.add(p);
    fill(0);
    textAlign(CENTER);
    text("You clicked something", (width / 2) + (width / 4), height / 2);
  }



}


void draw(){
  
  line( width / 2, height - border , width / 2 , border);
  textAlign(CENTER, CENTER);
  textSize(30);
  text( "Cafe Rubis Till System", width / 2 , border / 2);
  
  displayProducts();
  
  
}