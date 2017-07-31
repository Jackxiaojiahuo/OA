package biz;

import java.util.List;

import model.Car;
/**
 * 车辆业务接口
 * @author Jack
 *
 */
public interface CarBiz {
	/**
	 * 查询车辆列表
	 * @param car
	 * @return
	 */
	public List<Car> findAllCar(Car car);
	/**
	 * 查询车辆总数
	 * @param car
	 * @return
	 */
	public Integer findALlCarCount(Car car);
	/**
	 * 查找具体车辆
	 * @param car
	 * @return
	 */
	public Car findCar(Car car);
	/**
	 * 登记车辆
	 * @param car
	 * @return
	 */
	public Integer registerCar(Car car);
	/**
	 * 修改车辆信息
	 * @param car
	 * @return
	 */
	public Integer modifyCar(Car car);
	/**
	 * 删除车辆
	 * @param car
	 * @return
	 */
	public Integer delCar(Car car);
}
