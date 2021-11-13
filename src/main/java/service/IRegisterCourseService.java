package service;



import dto.RegisterCourseDTO;
import entity.RegisterCourse;

public interface IRegisterCourseService {
    boolean insertRegisterCourse(RegisterCourseDTO registerCourseDTO);
    RegisterCourse updateRegisterCourse(RegisterCourseDTO registerCourseDTO);
    boolean deleteRegisterCourse(RegisterCourseDTO registerCourseDTO);
    Integer countRegisterByCourseId(Integer courseId);
}
