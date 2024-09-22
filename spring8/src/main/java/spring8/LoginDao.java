package spring8;

import org.springframework.jdbc.core.JdbcTemplate;

public class LoginDao {
    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    public int saveLoginData(LoginData loginData) {
        String sql = "INSERT INTO logindata(username, password) VALUES(?, ?)";
        return template.update(sql, loginData.getUsername(), loginData.getPassword());
    }
}
