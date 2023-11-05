package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.CartItem;
import model.Item;
import model.Order;
import model.OrderDetail;
import model.User;

/**
 *
 * @author asus
 */
public class OrderDAO extends DBContext {
    public void addOrder(User u, CartItem cart,String fname,String lname,String phone,String address) {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        try{
            //add vào bảng Order
            String sql="insert into [order] values(?,?,?)";
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, date);
            st.setInt(2, u.getId());
            st.setDouble(3, cart.getToTalMoney());
            st.executeUpdate();
            
            //lấy ra id của Order vừa add
            String sql1="select top 1 id from [Order] order by id desc";
            PreparedStatement st1=connection.prepareStatement(sql1);
            ResultSet rs=st1.executeQuery();
            
            //add vào bảng OrderLine
            if(rs.next()){
                int oid=rs.getInt(1);
               
                for(Item i:cart.getItems()){
                String sql2="insert into [orderline] values(?,?,?,?,?,?,?,?,0)";
                PreparedStatement st2=connection.prepareStatement(sql2);
                st2.setInt(1, oid);
                st2.setInt(2, i.getProduct().getId());
                st2.setInt(3, i.getQuantity());
                st2.setDouble(4, i.getPrice());
                st2.setString(5, fname);
                 st2.setString(6, lname);
                 st2.setString(7, phone);
                  st2.setString(8, address);
                st2.executeUpdate();
            }
            }
            //update so luong trong bang Product sau khi ban
            String sql3 = "update Product set quantity = quantity - ? "
                        + "where id_pro = ?";
            PreparedStatement st3=connection.prepareStatement(sql3);
            for(Item i:cart.getItems()){
                st3.setInt(1, i.getQuantity());
                st3.setInt(2, i.getProduct().getId());
                st3.executeUpdate();
            }
            
        }catch(SQLException e){
            System.out.println(e);
        }
    }
    
    
     public List<OrderDetail> orderDetailList(int index) {
        String sql = "select * from Orderline order by oid OFFSET ? ROWS FETCH NEXT 5 ROWS ONLY";
        List<OrderDetail> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 5);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OrderDetail p = new OrderDetail(rs.getInt("oid"),
                        rs.getInt("pid"),
                        rs.getInt("quantity"),                    
                        rs.getDouble("price"),
                        rs.getString("FirstName"),
                        rs.getString("LastName"),
                        rs.getString("Phone"),
                        rs.getString("Address"),
                        rs.getInt("Status"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }
     
      public int gatTotalPage() {
        String sql = "select count(*) from Orderline ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("e");
        }

        return 0;

    }
   
}
    
    
//    public void insertOrder(String customerid, double totalPrice) {
//        String sql = "INSERT INTO [Order]\n"
//                + "           ([Customerid]\n"
//                + "           ,[Orderdate]\n"
//                + "           ,[Totalprice])\n"
//                + "     VALUES\n"
//                + "           (?\n"
//                + "           ,GETDATE()\n"
//                + "           ,?)";
//        PreparedStatement statement;
//        try {
//            statement = connection.prepareStatement(sql);
//            statement.setString(1, customerid);
//            statement.setDouble(2, totalPrice);
//            statement.executeUpdate();
//        } catch (SQLException ex) {
//            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//
//    }
//
//    public int getOrderId(String customerid) {
//        try {
//            String sql = "SELECT [Orderid]\n"
//                    + "      ,[Customerid]\n"
//                    + "      ,[Orderdate]\n"
//                    + "      ,[Totalprice]\n"
//                    + "  FROM [Order]\n"
//                    + "where Customerid = ?\n"
//                    + "order by Orderdate desc";
//            PreparedStatement statement = connection.prepareStatement(sql);
//            statement.setString(1, customerid);
//            ResultSet rs = statement.executeQuery();
//            while (rs.next()) {
//                return rs.getInt("Orderid");
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return -1;
//    }
//
//    public void insertOrderBooks(ArrayList<OrderBook> ob, int orderid) {
//        try {
//            String ok = "SELECT [Orderid]\n"
//                    + "      ,[Customerid]\n"
//                    + "      ,[Orderdate]\n"
//                    + "      ,[Totalprice]\n"
//                    + "  FROM [dbo].[Order]";
//            String sql = "INSERT INTO [Book_Order]\n"
//                    + "           ([Bookid]\n"
//                    + "           ,[Orderid]\n"
//                    + "           ,[Quantity]\n"
//                    + "           ,[Price])\n"
//                    + "     VALUES\n"
//                    + "           (?\n"
//                    + "           ,?\n"
//                    + "           ,?\n"
//                    + "           ,?)";
//            PreparedStatement statement = connection.prepareStatement(sql);
//            statement.setInt(2, orderid);
//            for (OrderBook obs : ob) {
//                statement.setInt(1, obs.getBooks().getId());
//                statement.setInt(3, obs.getQuantity());
//                statement.setDouble(4, obs.getPriceOrder());
//                statement.executeUpdate();
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }


