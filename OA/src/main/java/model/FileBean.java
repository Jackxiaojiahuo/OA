package model;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;
/**
 * 接收上传文件内容的实体
 * @author Jack
 *
 */
public class FileBean implements Serializable {
	/**
	 * 
	 */
	private MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		for(ImgType img:ImgType.values()){
			if(!file.getContentType().equalsIgnoreCase("image/"+img))
				throw new NullPointerException("只能上传png,jpg,jpeg,gif格式的图片");
		}
		this.file = file;
	}
}
