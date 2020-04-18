/*
*
*@Author TL
*@Date 
*/
package spring.mvc.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectSQL implements AutoCloseable {
	public static Connection cn;

	public ConnectSQL() {
		try {
			// nap database driver: xd hqtcsdl
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		//	System.out.print("Da xac dinh duoc hqtcsdl");
			//B2 : ket noi csdl
			String url = "jdbc:sqlserver://DESKTOP-PIKNVLI\\SQLEXPRESS:1433;databaseName=Internet;user=sa;password=123";
			cn = DriverManager.getConnection(url);
			//System.out.print("Da ket noi thanh cong");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void close() throws Exception {
	//	System.out.println("Dong ket noi");
		cn.close();

	}
}
