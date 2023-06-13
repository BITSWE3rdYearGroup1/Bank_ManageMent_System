//package BMSJAVA;
//
//
//
//import java.util.ArrayList;
//import java.util.Scanner;
//
//public class TellerController {
//    public static ArrayList<Teller> tellerArraylist = new ArrayList<>();
//    public TellerView tellerView;
//    public static Teller teller;
//
//
//    public TellerController(Teller teller, TellerView tellerView) {
//        Scanner scanner = new Scanner(System.in);
//
//        String choose = "";
//        while (!choose.equalsIgnoreCase("end")) {
//            teller = new Teller();
//            System.out.print("Enter teller id :");
//            teller.setTellerID(scanner.nextInt());
//            scanner.nextLine();
//            System.out.print("Enter  first name of the Teller  :");
//            teller.setFirstName(scanner.nextLine());
//            System.out.print("Enter  second name name of the Teller  :");
//            teller.setSecondName(scanner.nextLine());
//            System.out.print("Enter  gender  of the teller  :");
//            teller.setGender(scanner.nextLine());
//            System.out.print("Enter  username of the new teller  :");
//            teller.setUsername(scanner.nextLine());
//            System.out.print("Enter password to the new teller  :");
//            teller.setPassword(scanner.nextLine());
//            System.out.print("Enter phone number of the new teller :");
//            teller.setPhoneNumber(scanner.nextLine());
//            System.out.print("Enter  email of the new teller :");
//            teller.setEmail(scanner.nextLine());
//            tellerArraylist.add(teller);
//            this.teller = teller;
//
//            System.out.println("Enter \'end\' to exit");
//            choose = scanner.nextLine();
//        }
//        this.tellerView = tellerView;
//    }
//
//    public  static  Teller searchTeller(int tellerID){
//        for (Teller teller : tellerArraylist) {
//            if (teller.getTellerID() == tellerID)
//                return teller;
//        }
//        return null;
//    }
//
//    public  static void update(Teller teller) {
//        Scanner scanner = new Scanner(System.in);
//        System.out.print("Enter Teller id :");
//        teller.setTellerID(scanner.nextInt());
//        scanner.nextLine();
//        System.out.print("Enter  first name of the Teller  :");
//        teller.setFirstName(scanner.nextLine());
//        System.out.print("Enter  second name name of the teller  :");
//        teller.setSecondName(scanner.nextLine());
//        System.out.print("Enter  gender  of the teller  :");
//        teller.setGender(scanner.nextLine());
//        System.out.print("Enter  username of the new teller  :");
//        teller.setUsername(scanner.nextLine());
//        System.out.print("Enter password to the new Teller  :");
//        teller.setPassword(scanner.nextLine());
//        System.out.print("Enter phone number of the new teller :");
//        teller.setPhoneNumber(scanner.nextLine());
//        System.out.print("Enter  email of the new teller :");
//        teller.setEmail(scanner.nextLine());
//    }
//
//
//
//}