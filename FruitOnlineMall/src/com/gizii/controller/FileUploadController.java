package com.gizii.controller;

import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.commons.CommonsMultipartFile;



import java.io.File;


@Controller("uploadController")

public class FileUploadController implements ServletContextAware {
	private ServletContext servletContext;
	@Override
	public void setServletContext(ServletContext context) {
		this.servletContext  = context;
	}
	@RequestMapping(value="/upload.html",method = RequestMethod.POST)
	public String handleUploadData(String name,@RequestParam("file")CommonsMultipartFile file) {
		if (!file.isEmpty()) {
			String  path = servletContext.getRealPath("/upload/");
			String fileName = file.getOriginalFilename();
			String fileType = fileName.substring(fileName.lastIndexOf("."));
			File data = new File(path,name + fileType);
			try {
				file.getFileItem().write(data);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "upload_Ok";
		}
		else {
			return "upload_Error";
		}
	}
}