package BMSJAVA;

import java.io.IOException;
import java.nio.file.Files;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import static BMSJAVA.Database.*;

public class StoreTeller {
    public StoreTeller(){
    }
    public  boolean addTeller(Teller teller) throws SQLException, ClassNotFoundException {
                Database.initializeDatabase();
                String sql = "insert into tbl_teller(first_name ,last_name ,gender ,user_name ,password ,phone ,email ,registration_date,  teller_ID, branch_ID) values(?,?,?,?,?,?,?,?,?,2)";
                PreparedStatement preparedStatement = Database.connection.prepareStatement(sql);
                preparedStatement.setString(1,teller.getFirstName());
                preparedStatement.setString(2,teller.getSecondName());
                preparedStatement.setString(3,teller.getGender());
                preparedStatement.setString(4,teller.getUsername());
                preparedStatement.setString(5,teller.getPassword());
                preparedStatement.setString(6,(teller.getPhoneNumber()));
                preparedStatement.setString(7,teller.getEmail());
                preparedStatement.setDate(8, Date.valueOf(LocalDate.now()));
                preparedStatement.setInt(9,teller.getTellerID());
               return preparedStatement.executeUpdate() > 0;
    }
    public static Teller validateTellerLogin(TellerLogin tellerLogin) throws SQLException {
        Teller teller = new Teller();
        PreparedStatement preparedStatement = connection.prepareStatement("select * from tbl_teller where username =? and password = ? ");
        preparedStatement.setString(1,tellerLogin.getUsername());
        preparedStatement.setString(2,tellerLogin.getPassword());
        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next())
        {
            teller.setFirstName(resultSet.getString(1));
        }
        return teller;
    }
    public static boolean checkUsername(String username ) throws SQLException {
        PreparedStatement preparedStatement = connection.prepareStatement("select * from tbl_teller where username = ?");
        preparedStatement.setString(1,username);
       return preparedStatement.executeQuery().next();
    }

 public ResultSet getTellers() throws SQLException, ClassNotFoundException {
        Database.initializeDatabase();
        PreparedStatement preparedStatement = Database.connection.prepareStatement("select * from tbl_teller ");
        ResultSet resultSet = preparedStatement.executeQuery();
        
return resultSet;
 }
}
