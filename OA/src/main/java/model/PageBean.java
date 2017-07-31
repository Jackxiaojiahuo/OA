package model;

import java.io.Serializable;

public class PageBean implements Serializable {
	private Integer curpage=1;
	private Integer pagesize=10;
	private Integer maxpage=1;
	public Integer getCurpage() {
		return curpage;
	}
	public void setCurpage(Integer curpage) {
		this.curpage = curpage;
	}
	public Integer getPagesize() {
		return pagesize;
	}
	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}
	public Integer getMaxpage() {
		return maxpage;
	}
	public void setMaxpage(Integer maxpage) {
		if(maxpage!=null)
			this.maxpage = maxpage;
	}
	
}
