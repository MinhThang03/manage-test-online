package service;

import dto.AccountDTO;
import dto.ManagerCourseDTO;
import entity.Course;

import java.util.List;

public interface IManagerCourseService {
    boolean insertCourse(ManagerCourseDTO course);
    Course updateCourse(ManagerCourseDTO course);
    boolean deleteCourse(ManagerCourseDTO course);
    ManagerCourseDTO findById(Integer id);
    List<Course> getListCourse();
}
