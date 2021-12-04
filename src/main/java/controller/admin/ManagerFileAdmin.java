package controller.admin;

import dto.ExamDTO;
import dto.ManagerCourseDTO;
import entity.Course;
import entity.Exam;
import service.IExamService;
import service.IManagerCourseService;
import util.FormUtil;
import util.MessageUtil;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.ResourceBundle;

@WebServlet(name = "ManagerFileAdmin", value = "/admin-manager-file")
public class ManagerFileAdmin extends HttpServlet {
    @Inject
    private IManagerCourseService managerCourseService;
    @Inject
    private IExamService examService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Course> listCourse = managerCourseService.getListCourse();
        List<Exam> listExam = examService.getListExam();
        String message = request.getParameter("message");
        if(message != null){
            MessageUtil.showMessage(request);
        }
        request.setAttribute("list",listCourse);
        request.setAttribute("listExam", listExam);
        RequestDispatcher rd = request.getRequestDispatcher("/admin/ManagerFile.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action.equals("insertCourse")){
            ManagerCourseDTO courseDTO = FormUtil.toModel(ManagerCourseDTO.class, request);
            if(managerCourseService.insertCourse(courseDTO)){
                response.sendRedirect(request.getContextPath()+"/admin-manager-file?message=insert_success");
            }
            else{
                response.sendRedirect(request.getContextPath()+"/admin-manager-file?message=error_system");
            }
        }
        else {
            if(action.equals("deleteCourse")){
                ManagerCourseDTO courseDTO = FormUtil.toModel(ManagerCourseDTO.class, request);
                if(managerCourseService.deleteCourse(courseDTO)){
                    response.sendRedirect(request.getContextPath()+"/admin-manager-file?message=delete_success");
                }else{
                    response.sendRedirect(request.getContextPath()+"/admin-manager-file?message=error_system");
                }
            }
            else {
                if(action.equals("updateCourse")){
                    ManagerCourseDTO courseDTO = FormUtil.toModel(ManagerCourseDTO.class, request);
                    Course course = managerCourseService.updateCourse(courseDTO);
                    if(course != null){
                        response.sendRedirect(request.getContextPath()+"/admin-manager-file?message=update_succes");
                    }else{
                        response.sendRedirect(request.getContextPath()+"/admin-manager-file?message=error_system");
                    }
                }
            }
        }

        if(action.equals("insertExam")){
            ExamDTO examDTO = FormUtil.toModel(ExamDTO.class, request);
            if(examService.insertExam(examDTO)){
                response.sendRedirect(request.getContextPath()+"/admin-manager-file?message=insert_success");
            }
            else{
                response.sendRedirect(request.getContextPath()+"/admin-manager-file?message=error_system");
            }
        }
    }
}
