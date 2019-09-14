package cn.huizhi.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.huizhi.mapper.ChildStuReistrationMapper;
import cn.huizhi.pojo.ChildStuReistration;
import cn.huizhi.service.ChildStuReistrationService;
@Service
public class ChildStuReistrationServiceImpl implements ChildStuReistrationService {
	@Resource
	ChildStuReistrationMapper childStuReistrationMapper;
	
	public List<ChildStuReistration> findchildStuReistrationListByClass(Integer classId) {
		return childStuReistrationMapper.childStuReistrationListByClass(classId);
	}

	@Override
	public List<ChildStuReistration> selectTeacherDetailed(Integer classId) {
		// TODO Auto-generated method stub
		return childStuReistrationMapper.selectTeacherDetailed(classId);
	}

	@Override
	public Integer insertChilStuRistration(List<ChildStuReistration> list) {
		// TODO Auto-generated method stub
		return childStuReistrationMapper.insertChilStuRistration(list);
	}

}