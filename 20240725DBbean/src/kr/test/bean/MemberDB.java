package kr.test.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDB {
	
	//1)MemberDB �ڱ��ڽ��� ��ü �����ؼ� ��ü�� ����
	private static MemberDB instance=new MemberDB();
	public static MemberDB getInstance() {
		return instance;
	}
	
	//2)db����
	public Connection getConnection() throws Exception {
		
		Context ctx=new InitialContext();
		DataSource ds=(DataSource) ctx.lookup("java:comp/env/jdbc/myoracle");		
		return ds.getConnection();
	}
	
	//3)sql ��ɹ�
	public int insertMember(MemberBean member) throws Exception {
		Connection conn=null;
		PreparedStatement pstmt=null;  //�غ�� ������
		String sql="insert into memberT values(?,?,?,?,?,?)";
		int re=-1;
		
		try {
			conn=getConnection();   //db����
			pstmt=conn.prepareStatement(sql); //�غ�ȹ�����
			pstmt.setString(1, member.getMem_uid());
			pstmt.setString(2, member.getMem_pwd());
			pstmt.setString(3, member.getMem_name());
			pstmt.setString(4, member.getMem_email());
			pstmt.setTimestamp(5, member.getMem_regdate());
			pstmt.setString(6, member.getMem_addr());
			
			re=pstmt.executeUpdate();  //�����ÿ��� rs=1
			
			pstmt.close();
			conn.close();
				
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("dB����");
		}
		
		return re;  
	}
	
	
	
}
