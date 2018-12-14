package Service;

import Dao.StudentMapper;
import Model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService implements IStudentService {
    @Autowired
    private StudentMapper studentMapper;
     @Override
     public List<Student>selectByCondition(Student record) {
        return studentMapper.selectByCondition(record);
    }
}
