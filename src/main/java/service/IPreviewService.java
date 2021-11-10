package service;

import dto.PreviewDTO;
import dto.QuestionDTO;

import java.util.List;

public interface IPreviewService {
    public boolean insertPreview(PreviewDTO previewDTO);
    public boolean insertListPreviewWithQuestion(List<QuestionDTO> questionDTOList, Integer userId);
}
