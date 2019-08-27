package com.tyn.bnk.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SimpleMapper {
	
	public List<Map<String,Object>> justSelect();
	public Map<String,Object> getEmpInfo(String emp_no);
	public int saveEmpInfo(Map<String,Object> map);
	public int updEmpInfo(Map<String,Object> map);

}
