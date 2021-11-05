package service.impl;

import converter.ManagerCourseConverter;
import dao.IManagerCourseDAO;
import dto.ManagerCourseDTO;
import entity.Course;
import service.IManagerCourseService;

import javax.inject.Inject;
import java.util.List;

public class ManagerCourseService implements IManagerCourseService {
    @Inject
    private IManagerCourseDAO managerCourseDAO;
    private ManagerCourseConverter managerCourseConverter = new ManagerCourseConverter();
    @Override
    public boolean insertCourse(ManagerCourseDTO course) {
        Course cs = managerCourseConverter.toEntity(course);
        if(managerCourseDAO.insert(cs)){
            return true;
        }
        return false;
    }

    @Override
    public Course updateCourse(ManagerCourseDTO course) {
        Course cs = managerCourseConverter.toEntity(course);
        return managerCourseDAO.update(cs);
    }

    @Override
    public boolean deleteCourse(ManagerCourseDTO course) {
        Course cs = managerCourseConverter.toEntity(course);
        if(managerCourseDAO.delete(cs)){
            return true;
        }
        return false;
    }

    @Override
    public ManagerCourseDTO findById(Integer id) {
        return managerCourseConverter.toDto(managerCourseDAO.findById(id));
    }

    @Override
    public List<Course> getListCourse(){
        List<Course> list = managerCourseDAO.findAll();
        return list;
    }
}
