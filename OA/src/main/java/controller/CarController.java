package controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import biz.CarBiz;
import model.Boardroom;
import model.Car;

@Controller
@RequestMapping("car.do")
public class CarController {
	@Autowired
	private CarBiz carBiz;
	@RequestMapping(params="action=findCar")
	public String findCar(ModelMap model,Car cars,Integer curpage){
		if(cars.getId()==null){
			Car car=new Car();
			curpage=curpage==null?1:curpage;
			car.setCurpage((curpage-1)*car.getPagesize());
			model.put("list", carBiz.findAllCar(car));
			car.setCurpage(curpage);
			model.put("car", car);
			return "xz/cllb";
		}
		model.put("car", carBiz.findCar(cars));
		return "xz/info/clxg";
	}
	@RequestMapping(params="action=addCar")
	public String addCar(ModelMap model,Car car,MultipartFile file,HttpServletRequest request){
		String fname = file.getOriginalFilename();// 上传的文件原名
		//接收上传文件的路径
		String basepath = request.getSession().getServletContext()
				.getRealPath("/upload");
		//System.out.println(basepath);
		//上传文件的地址并重新命名
		String newFileName =  UUID.randomUUID().toString() + fname;
		//System.out.println(newFileName);
		try {
			//写入上传文件
			file.transferTo(new File(basepath + "/" +newFileName));
		} catch (Exception e) {
			e.printStackTrace();
		}
		car.setPic("/upload/"+newFileName);
		if(carBiz.registerCar(car)>0){
			request.getSession().setAttribute("msg", "添加成功");
			return "redirect:car.do?action=findCar";
		}
		model.put("msg", "添加失败");
		return "xz/info/cldj";
	}
	@RequestMapping(params="action=updateCar")
	public String updateCar(Car car,HttpServletRequest request){
		if(carBiz.modifyCar(car)>0){
			request.getSession().setAttribute("msg", "修改成功");
			return "redirect:car.do?action=findCar";
		}
		Integer id=car.getId();
		request.getSession().setAttribute("msg", "修改失败");
		return "redirect:car.do?action=findCar?id="+id;
	}
	@RequestMapping(params="action=delCar")
	public String delCar(Car car,HttpServletRequest request){
		car.setStatus("3");
		if(carBiz.delCar(car)>0){
			request.getSession().setAttribute("msg", "删除成功");
			return "redirect:car.do?action=findCar";
		}
		request.getSession().setAttribute("msg", "删除失败");
		return "redirect:car.do?action=findCar";
	}
}
