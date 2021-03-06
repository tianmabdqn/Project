package cn.huizhi.mapper;
/**
 * 少儿课时统计
 * @author wye
 *
 */

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.huizhi.pojo.ChildStuReistration;

public interface ChildStuReistrationMapper {
	
	/**
	 * 根据班级查询学生课时统计
	 * @param classId
	 * @return
	 */
	public List<ChildStuReistration> childStuReistrationListByClass(@Param("classId")Integer classId,@Param("startTime")String startTime,@Param("endTime")String endTime,@Param("schoolId")Integer schoolId);
	
	
	/**
	 * 查询教师上课明细
	 * @param classId
	 * @return
	 */
	public List<ChildStuReistration> selectTeacherDetailed(@Param("classId")Integer classId);
	
	/**
	 * 批量登记学生上课
	 * @param list
	 * @return
	 */
	public Integer insertChilStuRistration(List<ChildStuReistration> list);
	
}
