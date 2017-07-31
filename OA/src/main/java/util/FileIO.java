package util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

public class FileIO {

	private FileIO() {
		super();
	}
	public static File createFile(String fileName,HttpServletRequest request){
		try {
			if(fileName==null) fileName="";
			String basePath=request.getSession().getServletContext().getRealPath("/upload");
			File file = new File(basePath+"/"+fileName);
			if(!file.exists()){
				if(!file.getParentFile().exists()){
					file.mkdir();
				}
				if(!fileName.equals("")){
					if(file.exists()&&file.isDirectory())
						file.delete();
					if(!file.exists())
						file.createNewFile();
				}
			}
			return file;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public static boolean writeFile(byte[] bs,File toFile){
		FileOutputStream os=null;
		try {
			os=new FileOutputStream(toFile);
			os.write(bs);
			os.flush();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}finally{
			if(os!=null)
				try {
					os.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
		}
		return true;
	}
}
