package jbr.springmvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import jbr.springmvc.model.Login;
import jbr.springmvc.model.User;

public class UserDaoImpl implements UserDao {

    @Autowired
    DataSource dataSource;

    @Autowired
    JdbcTemplate jdbcTemplate;

    public boolean userExists(long phonenumber) {
        String sql = "select count(*) from register_users where phonenumber= ?";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, String.valueOf(phonenumber));
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1) > 0;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    @Override
    public void saveUser(User user) {
       /* if (isPhoneExists(user.getPhonenumber())) {
            throw new IllegalArgumentException("Phone number already exists.");
        }*/
        String sql = "insert into register_users values(?,?,?,?)";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(sql, new Object[] { user.getFirstname(),user.getLastname(),user.getPhonenumber(),user.getPassword() });
    }

    public User validateUser(Login login) {
        String sql = "select * from register_users where phonenumber = ? and password = ?";

        List<User> users = jdbcTemplate.query(sql, new Object[] { login.getPhonenumber(), login.getPassword() }, new UserMapper());

        return users.isEmpty() ? null : users.get(0);
    }
   /* public boolean isPhoneExists(Long phone) {
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        String sql = "select count(*) from register_users where phonenumber= ?";
        int count = jdbcTemplate.queryForObject(sql, new Object[]{phone}, Integer.class);
        return count > 0;
    }*/
}

class UserMapper implements RowMapper<User> {

        @Override
        public User mapRow(ResultSet rs, int rowNum) throws SQLException {
            User user = new User();
            user.setFirstname(rs.getString("firstname"));
            user.setLastname(rs.getString("lastname"));
            user.setPhonenumber(rs.getLong("phonenumber"));
            user.setPassword(rs.getString("password"));
            // set other fields as necessary
            return user;
        }
}
