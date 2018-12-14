package Dao;

import Model.Student;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface StudentMapper {
    List<Student> selectByCondition(Student record);
}
