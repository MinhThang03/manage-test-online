package dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ManagerCourseDTO extends AbstractDTO<ManagerCourseDTO>{
    private Integer id;
    private String courseName;
    private String courseImage;
    private String description;
}
