package base;

import java.util.List;

public interface MemberDao {
	/**
	 * 新增
	 * @param member
	 * @return
	 */
	boolean add(Member member);
	/**
	 * 批量新增,使用pipeline方式 
	 * @param list
	 * @return
	 */
	abstract boolean add(List<Member> list);
	/**
	 * 删除
	 * @param key
	 */
	void delete(String key);
	 /** 
     * 删除多个 
     * @param keys 
     */  
    void delete(List<String> keys);  
      
    /** 
     * 修改 
     * @param
     * @return  
     */  
    boolean update(final Member member); 
	/**
	 * 通过key获取 
	 * @param keyId
	 * @return
	 */
	Member get(String keyId);
}
