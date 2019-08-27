package com.tyn.bnk.redis;

import java.util.Map;

public interface ConceptRedisRepository {
	
	void saveConcept(Map<String, Object> map);
	void updateConcept(Map<String, Object> map);
	void deleteConcept(String emp_no);
	Map<String, Object> findeConcept(String emp_no);
	
	
}
