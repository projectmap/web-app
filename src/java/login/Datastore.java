
package login;
import java.sql.*;
/**
 *
 * @author surendra
 */
public class Datastore {
    
    Connection cn;
    int  store(String a,String b,String c){
        String user=a;
        String code=b;
        String contact=c;
        
        System.out.println("ok");
        try{
            int con=Integer.parseInt(contact);
         Class.forName("org.apache.derby.jdbc.ClientDriver");
            cn=DriverManager.getConnection("jdbc:derby://localhost:1527/formStore","root","root");
           
            PreparedStatement ps=cn.prepareStatement("insert into loginapp(username,code,contact) values(?,?,?)");
            ps.setString(1,user);
            ps.setString(2,code);
             ps.setInt(3,con);
          
            ps.executeUpdate();
            ps.close();
            cn.close();
           return 0;
    }catch(Exception e){
      
        return 1;
    }
    }
    int send(String a,String b){
        String user=a;
        String code=b;
        try{
         Class.forName("org.apache.derby.jdbc.ClientDriver");
            cn=DriverManager.getConnection("jdbc:derby://localhost:1527/formStore","root","root");
            
            Statement s=cn.createStatement(); System.out.println("yes bro");
            ResultSet rs=s.executeQuery("select * from loginapp where username="+"'"+user+"'");
                System.out.println("kv o");
            rs.next();
          String ss=rs.getString("code");
           System.out.println(ss);
          if(ss.equals(code)){
        return 0;}else return 1;
        }catch(Exception e){
            return 1;
        }
        
    }
    public int changecode(String user,String code){
        String a=user;String b=code;
        try{
         Class.forName("org.apache.derby.jdbc.ClientDriver");
            cn=DriverManager.getConnection("jdbc:derby://localhost:1527/formStore","root","root");
           
          Statement s=cn.createStatement();
          s.executeUpdate("update loginapp set code='"+b+"'where username='"+a+"'");
          

        
                 cn.close();
       //  ps.close();
    }catch(Exception e){
        return 0;
         }
          return 1;   
       }
     }