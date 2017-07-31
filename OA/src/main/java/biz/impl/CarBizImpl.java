package biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.CarBiz;
import dao.CarDao;
import model.Car;
@Service
public class CarBizImpl implements CarBiz {
	@Autowired
	private CarDao carDao;
	@Override
	public List<Car> findAllCar(Car car) {
		car.setMaxpage(this.findALlCarCount(car));
		return carDao.findCar(car);
	}

	@Override
	public Integer findALlCarCount(Car car) {
		return carDao.findCarCount(car);
	}

	@Override
	public Car findCar(Car car) {
		return carDao.findCar(car).get(0);
	}

	@Override
	public Integer registerCar(Car car) {
		return carDao.addCar(car);
	}

	@Override
	public Integer modifyCar(Car car) {
		return carDao.updateCar(car);
	}

	@Override
	public Integer delCar(Car car) {
		return carDao.updateCar(car);
	}

}
