package dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ExamDTO {
    private Integer  id;
    private String examName;
    private Integer courseID;
    private String fileCheck;
}
