package kr.test.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDB {
	
	//1)MemberDB 자기자신의 객체 생성해서 객체를 리턴
	private static MemberDB instance=new MemberDB();
	public static MemberDB getInstance() {
		return instance;
	}
	
	//2)db연결
	public Connection getConnection() throws Exception {
		
		Context ctx=new InitialContext();
		DataSource ds=(DataSource) ctx.lookup("java:comp/env/jdbc/myoracle");		
		return ds.getConnection();
	}
	
	//3)sql 명령문
	public int insertMember(MemberBean member) throws Exception {
		Connection conn=null;
		PreparedStatement pstmt=null;  //준비된 문장통
		String sql="insert into memberT values(?,?,?,?,?,?)";
		int re=-1;
		
		try {
			conn=getConnection();   //db연결
			pstmt=conn.prepareStatement(sql); //준비된문장통
			pstmt.setString(1, member.getMem_uid());
			pstmt.setString(2, member.getMem_pwd());
			pstmt.setString(3, member.getMem_name());
			pstmt.setString(4, member.getMem_email());
			pstmt.setTimestamp(5, member.getMem_regdate());
			pstmt.setString(6, member.getMem_addr());
			
			re=pstmt.executeUpdate();  //성공시에는 rs=1
			
			pstmt.close();
			conn.close();
				
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("dB에러");
		}
		
		return re;  
	}
	
	
	
}
