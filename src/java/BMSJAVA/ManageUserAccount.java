/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BMSJAVA;
import java.sql.*;

/**
 *
 * @author EZIRA SUTUAL
 */
public class ManageUserAccount {
    public  ManageUserAccount(){
        
    }
    

public  double seeBalance(String accountNumber) throws SQLException, ClassNotFoundException {

        Database.initializeDatabase();
        PreparedStatement preparedStatement = Database.connection.prepareStatement("select balance from tbl_customer where account_number = ?");
        preparedStatement.setString(1,accountNumber);
        ResultSet resultSet = preparedStatement.executeQuery();

        return resultSet.getDouble(1);
    }
    public  boolean transferMoney(TransferBean bean) throws SQLException, ClassNotFoundException {
                        Database.initializeDatabase();
                        CallableStatement preparedStatement1 = Database.connection.prepareCall("{CALL spTransferFund(?,?,?,?,?)}");
                        preparedStatement1.setDouble(1, bean.getAmount());
                        preparedStatement1.setString(2, bean.getDestination());
                        preparedStatement1.setInt(3,1);
                        preparedStatement1.setInt(4,Integer.parseInt(bean.getSource()));
                        preparedStatement1.registerOutParameter(5, Types.BOOLEAN);
                        preparedStatement1.executeUpdate();
                        boolean bool = preparedStatement1.getBoolean("make");
                        return bool;
    }
       public ResultSet getTransaction(int customer_ID) throws SQLException, ClassNotFoundException {
        Database.initializeDatabase();
        PreparedStatement preparedStatement  = Database.connection.prepareStatement("select * from tbl_transaction where customer_id = ?");
        preparedStatement.setInt(1,customer_ID);
        ResultSet resultSet = preparedStatement.executeQuery();
        return resultSet;
    }
        public double getBalance(int customer_ID) throws SQLException, ClassNotFoundException {
        Database.initializeDatabase();
        PreparedStatement preparedStatement =  Database.connection.prepareStatement("select balance from tbl_customer where customer_id = ?");
        preparedStatement.setInt(1,customer_ID);
        ResultSet resultSet = preparedStatement.executeQuery();
        return resultSet.getDouble(1);
    }
}
