import java.sql.*;
import java.util.Scanner;


public class App {

    private static Scanner input = new Scanner(System.in);
    private Connection connection;
    private Statement statement;
    private ResultSet resultSet;


    public void openConnection() {

        try {

            DriverManager.registerDriver(new com.ibm.db2.jcc.DB2Driver());

        } catch (Exception cnfex) {

            System.out.println("Problem in loading or registering IBM DB2 JDBC driver");

            cnfex.printStackTrace();
        }

        try {

            connection = DriverManager.getConnection("jdbc:db2://62.44.108.24:50000/SAMPLE", "db2admin", "db2admin");

            statement = connection.createStatement();

        } catch (SQLException s) {

            s.printStackTrace();

        }

    }

    public void closeConnection() {

        try {

            if (null != connection) {
                resultSet.close();
                statement.close();
                connection.close();

            }

        } catch (SQLException s) {

            s.printStackTrace();

        }

    }

    public void select(String stmnt, int column) {

        try {

            resultSet = statement.executeQuery(stmnt);

            String result = "";

            while (resultSet.next()) {

                for (int i = 1; i <= column; i++) {

                    result += resultSet.getString(i);

                    if (i == column) result += " \n";
                    else result += ", ";
                }
            }

            System.out.println(result);
        } catch (SQLException s) {
            s.printStackTrace();
        }
    }

    public void insert(String stmnt) {

        try {

            statement.executeUpdate(stmnt);

        } catch (SQLException s) {

            s.printStackTrace();

        }

        System.out.println("Successfully inserted!");

    }


    public void delete(String stmnt) {

        try {

            statement.executeUpdate(stmnt);

        } catch (SQLException s) {

            s.printStackTrace();

        }

        System.out.println("Successfully deleted!");

    }


    private static void choice(App db2Obj) {
        do {
            int number;
            number = input.nextInt();
            switch (number) {
                case 1:
                    choice1(db2Obj);
                    break;
                case 2:
                    choice2(db2Obj);
                    break;
                case 3:
                    choice3(db2Obj);
                    break;
                case 4:
                    choice4(db2Obj);
                    break;
                case 5:
                    choice5(db2Obj);
                    break;
                case 6:
                    System.out.print("Finished program");
                    return;
                default:
                    System.out.println("Invalid choice");
            }
        } while (true);
    }

    private static void choice1(App db2Obj) {
        System.out.print("Enter EGN: ");
        String egn = input.next();

        String statement = "SELECT * FROM FN1MI0700004.TECHNICIAN WHERE EGN = " + egn;
        db2Obj.select(statement, 4);
    }

    private static void choice2(App db2Obj) {
        String statement = "SELECT NAME, YEAR(YEAR) FROM FN1MI0700004.CATEGORIES";
        db2Obj.select(statement, 2);
    }

    private static void choice3(App db2Obj) {
        System.out.print("Enter id: ");
        Integer id = input.nextInt();

        String statement = "SELECT * FROM FN1MI0700004.DEVICE WHERE ID = " + id;
        db2Obj.select(statement, 7);
    }

    private static void choice4(App db2Obj) {
        String statement = "SELECT NAME FROM FN1MI0700004.TECHNICIAN";
        db2Obj.select(statement, 1);
    }

    private static void choice5(App db2Obj) {
        String statement = "SELECT YEAR FROM FN1MI0700004.DEVICE";
        db2Obj.select(statement, 1);

    }

    public static void main(String[] args) {

        App db2Obj = new App();
        db2Obj.openConnection();

        System.out.println("Menu:");
        System.out.println("1 - Find technician by EGN:");
        System.out.println("2 - Show the year of categories");
        System.out.println("3 - Find device by id:");
        System.out.println("4 - Show technicians names");
        System.out.println("5 - Show the year of the devices");
        System.out.println("6 - Exit");

        choice(db2Obj);

        db2Obj.closeConnection();
    }

}
   
    
     
   

 