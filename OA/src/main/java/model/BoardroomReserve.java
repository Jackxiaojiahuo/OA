package model;

import java.io.Serializable;

/**
 * 会议室预定实体
 * 
 * @author Jack
 *
 */
public class BoardroomReserve implements Serializable {
	/**
	 * 预定编号
	 */
	private Integer id;
	/**
	 * 预定主题
	 */
	private String subject;
	/**
	 * 优先级
	 */
	private String level;
	/**
	 * 申请日期
	 */
	private String applicationDate;
	/**
	 * 使用开始时间
	 */
	private String beginTime;
	/**
	 * 使用结束时间
	 */
	private String endTime;
	/**
	 * 使用事由
	 */
	private String reason;
	/**
	 * 使用备注
	 */
	private String description;
	/**
	 * 使用人
	 */
	private Employee emp;
	private Integer emp_id;
	/**
	 * 会议室
	 */
	private Boardroom board;
	private Integer board_id;

	public BoardroomReserve(Integer id, String subject, String level, String applicationDate, String beginTime,
			String endTime, String reason, String description, Employee emp, Integer emp_id, Boardroom board,
			Integer board_id) {
		super();
		this.id = id;
		this.subject = subject;
		this.level = level;
		this.applicationDate = applicationDate;
		this.beginTime = beginTime;
		this.endTime = endTime;
		this.reason = reason;
		this.description = description;
		this.emp = emp;
		this.emp_id = emp_id;
		this.board = board;
		this.board_id = board_id;
	}

	public BoardroomReserve() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getApplicationDate() {
		return applicationDate;
	}

	public void setApplicationDate(String applicationDate) {
		this.applicationDate = applicationDate;
	}

	public String getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Employee getEmp() {
		return emp;
	}

	public void setEmp(Employee emp) {
		this.emp = emp;
	}

	public Integer getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
	}

	public Boardroom getBoard() {
		return board;
	}

	public void setBoard(Boardroom board) {
		this.board = board;
	}

	public Integer getBoard_id() {
		return board_id;
	}

	public void setBoard_id(Integer board_id) {
		this.board_id = board_id;
	}

}
