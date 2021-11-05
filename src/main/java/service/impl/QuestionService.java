package service.impl;

import converter.QuestionConverter;
import dao.IQuestionDAO;
import dto.QuestionDTO;
import entity.Question;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import service.IQuestionService;

import javax.inject.Inject;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;

public class QuestionService implements IQuestionService {

    @Inject
    private IQuestionDAO questionDAO;
    private QuestionConverter questionConverter = new QuestionConverter();
    @Override
    public boolean insertQuestion(QuestionDTO question) {
        Question ques = questionConverter.toEntity(question);
        if(questionDAO.insert(ques)){
            return true;
        }
        return false;
    }

    @Override
    public Question updateQuestion(QuestionDTO question) {
        Question ques = questionConverter.toEntity(question);
        return questionDAO.update(ques);
    }

    @Override
    public boolean deleteQuestion(QuestionDTO question) {
        Question ques = questionConverter.toEntity(question);
        if(questionDAO.delete(ques)){
            return true;
        }
        return false;
    }

    @Override
    public QuestionDTO findById(Integer id) {
        return questionConverter.toDto(questionDAO.findById(id));
    }

    @Override
    public List<Question> getListQuestion() {
        List<Question> list = questionDAO.findAll();
        return list;
    }

    @Override
    public List<Question> getListQuestionByExamID(Integer id) {
        List<Question> list=questionDAO.findAllQuestionsByExamID(id);
        return list;
    }

    @Override
    public String importExcelXLSX(String addressFile, QuestionDTO questionDTO){
        FileInputStream inp;
        String msg = null;
        try {
            /*inp = new FileInputStream("D:\\test1.xls");
            POIFSFileSystem myFile = new POIFSFileSystem(inp);*/
            File myFile = new File(addressFile);
            XSSFWorkbook myWorkBook = new XSSFWorkbook (String.valueOf(myFile));

            XSSFSheet sheets = myWorkBook.getSheetAt(0);
            for(int i = 1; i <= sheets.getLastRowNum(); i++){
                Row row = sheets.getRow(i);
                int question_no = (int) row.getCell(0).getNumericCellValue();
                String question_name = row.getCell(1).getStringCellValue();
                String result_a = row.getCell(2).getStringCellValue();
                String result_b = row.getCell(3).getStringCellValue();
                String result_c = row.getCell(4).getStringCellValue();
                String result_d = row.getCell(5).getStringCellValue();
                String answer = row.getCell(6).getStringCellValue();

                questionDTO.setQuestionNo(question_no);
                questionDTO.setQuestionName(question_name);
                questionDTO.setResultA(result_a);
                questionDTO.setResultB(result_b);
                questionDTO.setResultC(result_c);
                questionDTO.setResultD(result_d);
                questionDTO.setAnswer(answer);

                insertQuestion(questionDTO);
            }
            myWorkBook.close();
            msg = "Success";
        } catch (Exception e) {
            msg = e.getMessage();
        }
        return msg;
    }
}
