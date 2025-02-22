import java.util.*; 
 
class ArrayListDemo
 { 
 
  public static void main(String args[]) { 
    // Create an array list. 
    
    ArrayList<String> al = new ArrayList<String>(20); 
     
    System.out.println("Initial size of al: " + 
                       al.size()); 
 
    // Add elements to the array list. 
    al.add("Chennai"); 
    al.add("Ahmedabad"); 
    al.add("Erode"); 
    al.add("Bangalore"); 
    al.add("Delhi"); 
    al.add("Faridabad"); 
    al.add(1, "Ananthapur");
     
     
 
    System.out.println("Size of al after additions: " + 
                       al.size()); 
 
    // Display the array list. 
    System.out.println("Contents of al: " + al); 
 
    // Remove elements from the array list. 
    al.remove("Faridabad"); 
    al.remove(2); 
 
    System.out.println("Size of al after deletions: " + 
                       al.size()); 
    System.out.println("Contents of al: " + al); 
  } 
}
