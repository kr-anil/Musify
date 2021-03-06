package spotify;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;
 
public class ArtistSongAddition extends Application {
	
	int artistID;
	 
	ArtistSongAddition(int id)  
	{ 
		artistID = id; 
	}

	public static void main(String[] args) {
        launch(args);
    }    
   
    @Override
    public void start(final Stage primaryStage) throws SQLException {
    	primaryStage.setTitle("Add Song");
        Button btn=new Button(); 
        btn.setText("ADD");
        btn.setMinSize(160,50);
        btn.setStyle("-fx-text-fill: #0000ff; -fx-font: 20px Serif");
        GridPane.setConstraints(btn,1,6);
         
        GridPane grid=new GridPane();
        grid.setPadding(new Insets(100,0,0,50)); // top,right,bottom,left
        grid.setVgap(20);   
        grid.setHgap(20);     
         
        String f="-fx-font-weight: bolder ; -fx-text-fill: white; -fx-font:20px sans-serif";
               
        final TextField search = new TextField();
		search.setPromptText("Enter Song name");
		GridPane.setConstraints(search,0,0);		
		
		Label lang=new Label("Language:");
        lang.setStyle(f);
        GridPane.setConstraints(lang,0,1);            
        final ChoiceBox<String> cb1=new ChoiceBox<String>();
        cb1.getItems().addAll("English","Hindi","Punjabi","Korean","Gujrati","Any");
        GridPane.setConstraints(cb1,1,1);  
        
        Label genre=new Label("Genre:");
        genre.setStyle(f);
        GridPane.setConstraints(genre,0,2);            
        final ChoiceBox<String> cb2=new ChoiceBox<String>();
        cb2.getItems().addAll("Pop","Rock","Hip-Hop","R&B","Electronic","Classic","Country","Jazz","Romance","Any");
        GridPane.setConstraints(cb2,1,2);  
        
        Label mood=new Label("Mood:");
        mood.setStyle(f);
        GridPane.setConstraints(mood,0,3);        
        final ChoiceBox<String> cb3=new ChoiceBox<String>();
        cb3.getItems().addAll("Happy","Dance","Romantic","Meloncholy","Energetic","Romantic","Any");
        GridPane.setConstraints(cb3,1,3);
       
        Label filml = new Label("Film:");
        filml.setStyle(f);
        GridPane.setConstraints(filml,0,4); 
        final TextField film = new TextField();
		film.setPromptText("Choose Film");
		GridPane.setConstraints(film,1,4);  
		
		Label releaseDate = new Label("Release Date:");
        releaseDate.setStyle(f);
        GridPane.setConstraints(releaseDate,0,5); 
        final TextField rd = new TextField();
		rd.setPromptText("Release Date");
		GridPane.setConstraints(rd,1,5);
	
		EventHandler<ActionEvent> event1=new EventHandler<ActionEvent>() { 
            public void handle(ActionEvent e)  
            { 
            	try {
            		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/spo","root","Maeve@123");
            		Statement sta=con.createStatement();
            		String q1="SELECT SongID FROM " +cb1.getValue()+"_Songs WHERE SongID=(SELECT max(SongID) FROM "+cb1.getValue()+"_Songs );"; 
            		ResultSet rs=sta.executeQuery(q1);
        	        rs.next();
        	        int songID = Integer.parseInt(rs.getString(1)) +1;
        	        
            		rs=sta.executeQuery(q1);
        	        rs.next();
        	        
        	        String artistName = rs.getString(1);
        	        
        	        String q= "SELECT GenreID from Genre where GenreName = \"" + cb2.getValue() +"\";"; 
            		rs=sta.executeQuery(q);
        	        rs.next();
        	        int genreID = Integer.parseInt(rs.getString(1));
        	        
        	        q= "SELECT MoodID from Mood where MoodName = \"" + cb3.getValue() +"\";"; 
            		rs=sta.executeQuery(q);
        	        rs.next();
        	        int moodID = Integer.parseInt(rs.getString(1));
        	        
        	        q= "SELECT FilmID from FilmMakers where FilmName = \"" + film.getText() +"\";"; 
            		rs=sta.executeQuery(q);
        	        rs.next();
        	        int filmID = Integer.parseInt(rs.getString(1)) +1;
        	        
            		String query = "Insert into " + cb1.getValue() + "_Songs values(" + songID + ",\"" + search.getText() +"\","+artistID+",\""+artistName +"\","+ "\"/home/akshyta/Desktop/DBMS_Project/Lyrics/H25.txt\"," + "\"" + rd.getText() + "\"," + "0,0," +genreID+","+moodID+","+filmID+",\"/home/akshyta/Desktop/DBMS_Project/Songs/H25.mp3\"," + "\"/home/akshyta/Desktop/DBMS_Project/Images/H1.jpg\");";
            		System.out.println(query);
            		sta.executeUpdate(query);       		
					new artistpage(artistID).start(primaryStage);
				} catch (Exception e1) {
					e1.printStackTrace(); 
				}
            } 
        }; 
        btn.setOnAction(event1); 
        
        Button bk=new Button();
        bk.setText("BACK");
        bk.setMinSize(160,50);
        bk.setStyle("-fx-text-fill: #0000ff; -fx-font: 20px Serif");
        GridPane.setConstraints(bk,1,7);
        EventHandler<ActionEvent> event=new EventHandler<ActionEvent>() { 
            public void handle(ActionEvent e) 
            { 
            	new artistpage(artistID).start(primaryStage);
            } 
        }; 
        bk.setOnAction(event);
                
        grid.setStyle("-fx-background-image: url('https://png.pngtree.com/thumb_back/fw800/back_our/20190621/ourmid/pngtree-cool-black-background-promotion-main-map-image_188883.jpg')");
        grid.getChildren().addAll(btn, lang, genre, mood, filml, film , cb1,cb2,cb3, search, releaseDate,rd,bk);
        primaryStage.setScene(new Scene(grid,600,650));
        primaryStage.show();
    }
}
