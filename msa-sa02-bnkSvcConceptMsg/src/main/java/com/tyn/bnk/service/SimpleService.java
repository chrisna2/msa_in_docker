package com.tyn.bnk.service;

import java.util.List;
import java.util.Map;

public interface SimpleService {
	
	public List<Map<String,Object>> justSelect();
	public Map<String,Object> getEmpInfo(String emp_no);
	public Map<String,Object> saveEmpInfo(Map<String,Object> map);
	public Map<String,Object> updEmpInfo(Map<String,Object> map);
	public int delEmpInfo(String emp_no);

}
