package com.task.Controller;

import com.task.Service.StudentService;
import com.task.pojo.Student;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/student")
public class JsonController {
    @Autowired
    private StudentService studentService;
    private static final Logger logger = LogManager.getLogger(JsonController.class);

    /**
     * 增加数据
     *
     * @param student
     * @return
     */
    @RequestMapping(value = "/addStudent", method = RequestMethod.POST)
    @ResponseBody
    public boolean addStudent(@RequestBody Student student) {
        if (studentService.insertStudent(student) > 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 删除数据
     * @param id
     * @return
     */
    @RequestMapping(value = "/deleteStudent/{id}", method = RequestMethod.DELETE)
    @ResponseBody
    public boolean deleteStudent(@PathVariable long id) {
        return studentService.deleteStudent(id);
    }



    /**
     * 修改数据
     * @param student
     * @return
     */
    @RequestMapping(value = "/updateStudent",method = RequestMethod.PUT)
    @ResponseBody
    public boolean updateStudent(Student student){
        return studentService.updateStudent(student);
    }

    /**
     * 根据名字查询学生
     * @param name
     * @return
     */
    @RequestMapping(value = "/findStudent",method = RequestMethod.GET)
    @ResponseBody
    public List<Student> findStudent(String name){
        List<Student>students=studentService.findStudentByName(name);
       return  students;

    }


    @RequestMapping(value = "/findAllStudent",method = RequestMethod.GET)
    @ResponseBody
    public List<Student> findAllStudent(){
        List<Student>students=studentService.findAllStudent();
        return students;
    }
}
