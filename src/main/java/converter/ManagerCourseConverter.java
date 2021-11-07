package converter;

import dto.ManagerCourseDTO;
import entity.Course;

public class ManagerCourseConverter {
    public ManagerCourseDTO toDto(Course entity){
        if(entity == null){
            return null;
        }
        ManagerCourseDTO result = new ManagerCourseDTO();
        result.setId(entity.getId());
        result.setCourseName(entity.getCourseName());
        result.setCourseImage(entity.getCourseImage());
        result.setDescription(entity.getDescription());
        return result;
    }
    public Course toEntity(ManagerCourseDTO dto){
        if(dto == null){
            return null;
        }
        Course result = new Course();
        result.setId(dto.getId());
        result.setCourseName(dto.getCourseName());
        result.setCourseImage(dto.getCourseImage());
        result.setDescription(dto.getDescription());
        return result;
    }
}
