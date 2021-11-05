package controller.admin;

import dto.ManagerCourseDTO;
import entity.Course;
import service.IManagerCourseService;
import util.FormUtil;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManagerFileAdmin", value = "/admin-manager-file")
public class ManagerFileAdmin extends HttpServlet {
    @Inject
    private IManagerCourseService managerCourseService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Course> list = managerCourseService.getListCourse();
        request.setAttribute("list",list);
        RequestDispatcher rd = request.getRequestDispatcher("/admin/ManagerFile.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action.equals("insert")){
            ManagerCourseDTO courseDTO = FormUtil.toModel(ManagerCourseDTO.class, request);
            if(managerCourseService.insertCourse(courseDTO)){
                response.sendRedirect(request.getContextPath()+"/admin-manager-file?message=insert_success");
            }
            else{
                response.sendRedirect(request.getContextPath()+"/admin-manager-file?message=error_system");
            }
        }
        else {
            if(action.equals("delete")){
                ManagerCourseDTO courseDTO = FormUtil.toModel(ManagerCourseDTO.class, request);
                if(managerCourseService.deleteCourse(courseDTO)){
                    response.sendRedirect(request.getContextPath()+"/admin-manager-file?message=delete_success");
                }else{
                    response.sendRedirect(request.getContextPath()+"/admin-manager-file?message=error_system");
                }
            }
            else {
                if(action.equals("update")){
                    ManagerCourseDTO courseDTO = FormUtil.toModel(ManagerCourseDTO.class, request);
                    Course course = managerCourseService.updateCourse(courseDTO);
                    if(course != null){
                        response.sendRedirect(request.getContextPath()+"/admin-manager-file?message=update_success");
                    }else{
                        response.sendRedirect(request.getContextPath()+"/admin-manager-file?message=error_system");
                    }
                }
            }
        }
    }
}
