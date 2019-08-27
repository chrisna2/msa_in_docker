package com.tyn.bnk.events.handlers;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.stream.annotation.EnableBinding;
import org.springframework.cloud.stream.annotation.StreamListener;

import com.tyn.bnk.events.CustomChannels;
import com.tyn.bnk.redis.ConceptRedisRepository;


@EnableBinding(CustomChannels.class)
//application.java 클래스에서 해당 클래스로 옮기는 작업 수행 
//이때 Sink.class 대신 CustomChannels클래스를 사용하고 파라미터를 전달한다.
public class ConceptChangeHandler {
	
	Logger logger = LoggerFactory.getLogger(ConceptChangeHandler.class);
	
	
	@Autowired
	private ConceptRedisRepository redisRepository;
	
	
	//Sink.INPUT 대신 @StreamListener 에너테이션을 사용하여 해당 채널이름인 conceptchannel를 전달한다.
	@StreamListener("conceptchannel")
	public void loggerSink(Map<String, Object> map) {
		
		String emp_no = (String)map.get("emp_no");
		String action = (String)map.get("action");
		
		logger.info("★ conceptchannel => {} / {}", action, emp_no);
		
		switch(action) {
			
	        case "GET":
	        	logger.info("★조회 실행중...직원번호 : {}", emp_no);
	            break;
	        case "SAVE":
	        	logger.info("★저장 실행중...직원번호 : {}", emp_no);
	            break;
	        //concept데이터가 수정되거나 삭제 되면 해당 레디스 정보도 같이 삭제 된다.
	        case "UPDATE":
	        	logger.info("★수정 실행중...직원번호 : {}", emp_no);
	        	redisRepository.deleteConcept(emp_no);
	        	logger.info("★ {} 해당 직원의 레디스 정보가 삭제되었습니다.", emp_no);
	            break;
	        case "DELETE":
	        	logger.info("★삭제 실행중...직원번호 : {}", emp_no);
	        	redisRepository.deleteConcept(emp_no);
	        	logger.info("★ {} 해당 직원의 레디스 정보가 삭제되었습니다.", emp_no);
	            break;
	        default:
	        	logger.info("★모르는 이벤트 실행중...직원번호 : {} / ", action, emp_no);
	            break;
		
		}
		
	}
	
}
