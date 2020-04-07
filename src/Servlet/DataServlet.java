package Servlet;

import Bean.Applience;
import Service.ApplyService;
import Service.impl.ApplyServiceImpl;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

public class DataServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        Applience applience = (Applience) req.getSession().getAttribute("applience");
        if (applience == null) {
            req.getRequestDispatcher("/submit.jsp").forward(req,resp);
        }
        ApplyService applyService = new ApplyServiceImpl();
//        try {
//            applyService.applyComputerByBean(applience);
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        }
        PrintWriter out = resp.getWriter();
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);

        factory.setSizeThreshold(1024*1024*100);
        File uploadTemp = new File("/home/sexyyxy");
        uploadTemp.mkdirs();
        factory.setRepository(uploadTemp);

        upload.setFileSizeMax(1024*1024*100);
        upload.setFileSizeMax(1024*1024*300);

        try {
            List<FileItem> list = upload.parseRequest(req);
            System.out.println(list.size());
            for (FileItem fileItem : list) {
                if (!fileItem.isFormField()&&fileItem.getName()!=null&&!fileItem.getName().equals("")) {
                    String fileName = fileItem.getName();
//                    System.out.println(fileName);
                    String uuid = UUID.randomUUID().toString();
                    String suffix = fileName.substring(fileName.lastIndexOf("."));

                    String uploadPath=req.getSession().getServletContext().getRealPath("/upload");
//                    System.out.println(uploadPath);
                    File file = new File(uploadPath);
                    file.mkdirs();
                    fileItem.write(new File(uploadPath,uuid+suffix));
                }
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("/loading.html").forward(req,resp);
    }
}
