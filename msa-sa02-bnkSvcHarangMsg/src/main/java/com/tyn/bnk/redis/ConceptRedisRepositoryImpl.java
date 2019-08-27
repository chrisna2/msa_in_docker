package com.tyn.bnk.redis;

import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;

@Repository//이 클래스가 스프링 데이터에 사용되는 Repository클래스라고 스프링에 지정한다.
public class ConceptRedisRepositoryImpl implements ConceptRedisRepository{
	//조직 데이터가 저장되는 레디스 서버의 해시 이름이다.
	private static final String HASH_NAME = "concept";
	
	private RedisTemplate<String, Object> redisTemplate;
	//레디그 서버에 데이터 작을 수행하는 스프링 헬퍼 메서드의 집합이다.
	
	private HashOperations hashOperations;
	
	
	public ConceptRedisRepositoryImpl() {
		super();
	}
	
	@Autowired
	private ConceptRedisRepositoryImpl(RedisTemplate<String, Object> redisTemplate) {
		this.redisTemplate = redisTemplate;
	}
	
	@PostConstruct
	private void init() {
		hashOperations = redisTemplate.opsForHash();
	}
	
	@Override
	public void saveConcept(Map<String, Object> map) {
		//레디스와 모든 통신은 무조건 HashMap으로 설정한다. 내 마음이다.
		hashOperations.put(HASH_NAME, String.valueOf(map.get("emp_no")), map);
	}

	@Override
	public void updateConcept(Map<String, Object> map) {
		//레디스와 모든 통신은 무조건 HashMap으로 설정한다. 내 마음이다.
		hashOperations.put(HASH_NAME, String.valueOf(map.get("emp_no")), map);
	}

	@Override
	public void deleteConcept(String emp_no) {
		hashOperations.delete(HASH_NAME, emp_no);
	}

	@Override
	public Map<String, Object> findeConcept(String emp_no) {
		return (Map<String, Object>)hashOperations.get(HASH_NAME, emp_no);
	}
	
	
	
	
	
	
	
	
	
	
}
