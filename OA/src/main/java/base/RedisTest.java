package base;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
public class RedisTest  {  
    
    @Autowired  
    private MemberDao memberDao;  
      
    /** 
     * 新增 
     * <br>------------------------------<br> 
     */  
    @Test  
    public void testAddMember() {  
    	Member member = new Member();  
    	member.setId("Member1");  
    	member.setNickname("liuyazhuang");  
        boolean result = memberDao.add(member);  
    }  
      
    /** 
     * 批量新增 普通方式 
     * <br>------------------------------<br> 
     */  
    @Test  
    public void testAddMembers1() {  
        List<Member> list = new ArrayList<Member>();  
        for (int i = 10; i < 50000; i++) {  
            Member Member = new Member();  
            Member.setId("Member" + i);  
            Member.setNickname("liuyazhuang" + i);  
            list.add(Member);  
        }  
        long begin = System.currentTimeMillis();  
        for (Member Member : list) {  
            memberDao.add(Member);  
        }  
        System.out.println(System.currentTimeMillis() -  begin);  
    }  
      
    /** 
     * 批量新增 pipeline方式 
     * <br>------------------------------<br> 
     */  
    @Test  
    public void testAddMembers2() {  
        List<Member> list = new ArrayList<Member>();  
        for (int i = 10; i < 1500000; i++) {  
            Member member = new Member();  
            member.setId("Member" + i);  
            member.setNickname("liuyazhuang" + i);  
            list.add(member);  
        }  
        long begin = System.currentTimeMillis();  
        boolean result = memberDao.add(list);  
        System.out.println(System.currentTimeMillis() - begin);  
    }  
      
    /** 
     * 修改 
     * <br>------------------------------<br> 
     */  
    @Test  
    public void testUpdate() {  
        Member member = new Member();  
        member.setId("Member1");  
        member.setNickname("liuyazhuang");  
        boolean result = memberDao.update(member);  
    }  
      
    /** 
     * 通过key删除单个 
     * <br>------------------------------<br> 
     */  
    @Test  
    public void testDelete() {  
        String key = "Member1";  
        memberDao.delete(key);  
    }  
      
    /** 
     * 批量删除 
     * <br>------------------------------<br> 
     */  
    @Test  
    public void testDeletes() {  
        List<String> list = new ArrayList<String>();  
        for (int i = 0; i < 10; i++) {  
            list.add("Member" + i);  
        }  
        memberDao.delete(list);  
    }  
      
    /** 
     * 获取 
     * <br>------------------------------<br> 
     */  
    @Test  
    public void testGetMember() {  
        String id = "Member1";  
        Member member = memberDao.get(id);  
    }  
  
    /** 
     * 设置MemberDao 
     * @param MemberDao the MemberDao to set 
     */  
    public void setMemberDao(MemberDao memberDao) {  
        this.memberDao = memberDao;  
    }  
}
