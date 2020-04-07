package dao.UserDaoImpl;

import Bean.TwoSet;
import Bean.User;
import Util.DBUtil;
import dao.DataDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DataDaoImpl implements DataDao {
    @Override
    public void setDataDaoByTwoSet(TwoSet twoSet) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        User user = twoSet.getUser();
        try {
            //System.out.println(user.getEmail());
            con = DBUtil.getConnection();
            ps = con.prepareStatement("INSERT INTO d_user(name,file1Name,file2Name) VALUES (?,?,?)");
            ps.setString(1,user.getName());
            ps.setString(2,twoSet.getDataSetName());
            ps.setString(3,twoSet.getTrainSetName()));
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
