package BMSJAVA;

import java.io.IOException;
import java.nio.file.Files;
import java.sql.*;
import java.time.LocalDate;
import static BMSJAVA.Database.*;

public class StoreUser {
    public StoreUser() throws SQLException, ClassNotFoundException {
         Database.initializeDatabase();
    }
   public  boolean addUser(Customer customer) throws SQLException {
//        StoreResponse storeResponse = new StoreResponse(false, false);
//        if (checkAccount((customer.getAccountNumber())))
            try {
//                storeResponse.setExist(true);
                Database.initializeDatabase();
                String sql = "insert into tbl_customer(first_name ,last_name ,gender ,user_name ,password ,account_number ,balance ,phone,email ,registration_date ,teller_id ) values(?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, customer.getFirstName());
                preparedStatement.setString(2, customer.getSecondName());
                preparedStatement.setString(3, customer.getGender());
                preparedStatement.setString(4, customer.getUsername());
                preparedStatement.setString(5, customer.getPassword());
                preparedStatement.setString(6,  customer.getAccountNumber());
                preparedStatement.setFloat(7, (float) customer.getBalance());
                preparedStatement.setString(8, customer.getPhoneNumber());
                preparedStatement.setString(9, customer.getEmail());
                preparedStatement.setInt(11,1);
                LocalDate currentDate = LocalDate.now();
                preparedStatement.setDate(10, Date.valueOf(LocalDate.now()));
                if (preparedStatement.executeUpdate() > 0)
                    return true;
            } catch (SQLException | ClassNotFoundException ex) {
                throw new RuntimeException(ex);
            }

        return false;
    }
    public static boolean checkAccount(String account ) throws SQLException {
        PreparedStatement preparedStatement = connection.prepareStatement("select * from tbl_customer where account_number = ?");
        preparedStatement.setString(1,account);
        ResultSet resultSet = preparedStatement.executeQuery();
        return !resultSet.next();
    }
   public static Customer validateUser(UserLogin userLogin) throws SQLException {
        Customer customer = new Customer();
        PreparedStatement preparedStatement = connection.prepareStatement("select * from tbl_customer where user_name = ? and password = ?");
        preparedStatement.setString(1, userLogin.getUsername());
        preparedStatement.setString(2, userLogin.getPassword());
        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            customer.setCustomerID(Integer.parseInt(resultSet.getString(1)));
            customer.setFirstName(resultSet.getString(2));
            customer.setSecondName(resultSet.getString(3));
            customer.setGender(resultSet.getString(4));
            customer.setUsername(resultSet.getString(5));
            customer.setPassword(resultSet.getString(6));
            customer.setAccountNumber(resultSet.getString(7));
            customer.setBalance(Double.parseDouble(resultSet.getString(8)));
            customer.setPhoneNumber(resultSet.getString(9));
            customer.setEmail(resultSet.getString(10));
        }
        return customer;
    }
}
