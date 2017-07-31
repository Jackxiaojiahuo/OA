package dao;

import java.util.List;

import model.Car;

public interface CarDao {
	/**
	 * 查询车
	 * @param car
	 * @return
	 */
	public List<Car> findCar(Car car);
	/**
	 * 查询车数量
	 * @param car
	 * @return
	 */
	public Integer findCarCount(Car car);
	/**
	 * 添加车辆
	 * @param car
	 * @return
	 */
	public Integer addCar(Car car);
	/**
	 * 修改车辆
	 * @param car
	 * @return
	 */
	public Integer updateCar(Car car);
}
