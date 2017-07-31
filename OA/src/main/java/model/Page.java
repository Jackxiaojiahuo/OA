package model;

import java.io.Serializable;

/**
 * 分页工具类
 * 
 * @author Jack
 *
 */
public class Page implements Serializable{
	/**
	 * 当前页数
	 */
	private Integer index;
	/**
	 * 每页显示数目
	 */
	private Integer size;
	/**
	 * 总页数
	 */
	private Integer total;
	/**
	 * 总信息数
	 */
	private Integer count;

	public Page() {
		super();
	}

	public Page(Integer index, Integer size) {
		super();
		this.index = index;
		this.size = size;
	}

	public Integer getIndex() {
		return index;
	}

	public void setIndex(Integer index) {
		this.index = index;
	}

	public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}

	public Integer getTotal() {
		return total = this.count % this.size == 0 ? this.count / this.size : this.count / this.size + 1;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

}
