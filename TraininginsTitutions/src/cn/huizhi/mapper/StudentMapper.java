package cn.huizhi.mapper;

import java.util.List;

import cn.huizhi.pojo.Student;

public interface StudentMapper {

	/**
	 * 查询所有高中学生
	 * @return
	 */
	public List<Student> selectHigh(Integer schoolId);
	
	/**
	 * 查询所有少儿学生
	 * @param feeCategory
	 * @return
	 */
	public List<Student> selectChildren(Integer schoolId);
	
	/**
	 * 查询所有艺考学生
	 * @param feeCategory
	 * @return
	 */
	public List<Student> selectYiKao(Integer schoolId);
	
	/**
	 * 添加学生班级查询学生主键
	 * @param stu
	 * @return
	 */
	public Student selectChildrenInfoByStudnet(Student stu);
	
	/**
	 * 添加学生信息
	 * @param stu
	 * @return
	 */
	public int insertStudnetInfo(Student stu);
}