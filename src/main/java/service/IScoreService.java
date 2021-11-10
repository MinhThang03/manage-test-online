package service;

import dto.QuestionDTO;
import dto.ScoreDTO;

import java.util.List;

public interface IScoreService {
    public Double calculateScore(List<QuestionDTO> questionDTOList);
    public boolean insertScore(ScoreDTO scoreDTO);
    public ScoreDTO findByExamIdAndUserId(Integer examId, Integer userId);
}
