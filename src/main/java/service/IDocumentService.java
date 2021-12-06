package service;

import dto.DocumentDTO;
import entity.Document;
import entity.Exam;

import java.util.List;


public interface IDocumentService {
    boolean insertDocument(DocumentDTO documentDTO);
    Document updateDocument(DocumentDTO documentDTO);
    boolean deleteDocument(DocumentDTO documentDTO);
    List<Document> getListDocument();
    public List<DocumentDTO> findAllDocumentsByCourseID(Integer courseId);
}
