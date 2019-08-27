package com.tyn.bnk.service;

import java.util.List;
import java.util.Map;

public interface SimpleService {
	
	public List<Map<String, Object>> justSelect();
	
	public List<Map<String, Object>> srchAllTblLesson();
	
	public List<Map<String, Object>> srchAllTblParttime();
	
	public List<Map<String, Object>> srchMember(String m_id);

	public Map<String, Object> getEmpInfoClientType(String emp_no, String clientType);
	
	public Map<String, Object> getEmpInfo(String emp_no);
	
	public List<Map<String, Object>> srchMemberByGrade(int m_grade);
	
}
