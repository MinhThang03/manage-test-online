package service.impl;

import converter.RegisterCourseConverter;

import dao.IRegisterCourseDAO;
import dao.impl.RegisterCourseDAO;
import dto.RegisterCourseDTO;
import entity.RegisterCourse;
import service.IRegisterCourseService;

public class RegisterCourseService implements IRegisterCourseService {

    private IRegisterCourseDAO registerCourseDAO = new RegisterCourseDAO();
    private RegisterCourseConverter registerCourseConverter = new RegisterCourseConverter();

    @Override
    public boolean insertRegisterCourse(RegisterCourseDTO registerCourseDTO) {
        RegisterCourse registerCourse = registerCourseConverter.toEntity(registerCourseDTO);
        if(registerCourseDAO.insert(registerCourse)){
            return true;
        }
        return false;
    }

    @Override
    public RegisterCourse updateRegisterCourse(RegisterCourseDTO registerCourseDTO) {
        return registerCourseDAO.update(registerCourseConverter.toEntity(registerCourseDTO));
    }

    @Override
    public boolean deleteRegisterCourse(RegisterCourseDTO registerCourseDTO) {
        RegisterCourse registerCourse = registerCourseConverter.toEntity(registerCourseDTO);
        if(registerCourseDAO.delete(registerCourse)){
            return true;
        }
        return false;
    }

    @Override
    public Integer countRegisterByCourseId(Integer courseId) {
        if(registerCourseDAO.findByCourseId(courseId)==null){
            return 0;
        }
        return registerCourseDAO.findByCourseId(courseId).size();
    }
}
