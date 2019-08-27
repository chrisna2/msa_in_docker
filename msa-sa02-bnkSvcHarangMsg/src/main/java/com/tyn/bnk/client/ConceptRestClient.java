
package com.tyn.bnk.client;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.tyn.bnk.redis.ConceptRedisRepository;
import com.tyn.bnk.utils.UserContext;

//대안 1 - restTemplate
@Component
public class ConceptRestClient {

	@Autowired
	private RestTemplate restTemplate;
	
	/*8장 추가*/
	@Autowired
	ConceptRedisRepository conRedisRepo;
	
	private static final Logger logger = LoggerFactory.getLogger(ConceptRestClient.class);
	/* 로컬에서 실행하기
	  	
		1.Zuul 및 Eureka를 포함하여 로컬에서 모든 서비스를 실행하는 경우 8 장에서 Zuul 서버를 Eureka에 등록하지 않습니다.
		(아마 당신은 할 수 있습니다, 나는 이것을 끝내지 않습니다 .Zuul은 오래 실행되는 서비스이므로 Eureka에 등록하지 않을 것입니다).
		따라서 소스 코드에서 응용 프로그램을 실행중인 로컬 호스트 나 IP 주소를 가리켜 야합니다. 
		Docker에서 동일한 코드를 실행하면 Docker는 문제의 컨테이너로 해석 할 내부 DNS 서비스를 실행합니다.
		로컬에서 실행하기위한 몇 가지 선택을해야합니다.
			1.Zuul 서비스를 Eureka에 등록하십시오. 확실하지 않지만 작동해야합니다.
			2.코드에서 Zuul 서비스의 로컬 IP 주소를 참조하십시오. 이 경우 표준 Spring RestTemplate을 사용하여 Eureka에 대한 서비스를 검색하지 않도록하십시오.
			3.코드에 직접 IP를 임베드하고 싶지 않다면 로컬 호스트 파일을 IP에 하드 맵 zuulservice로 설정할 수 있습니다 (IP가 변경되지 않는 한)
		
		2.주소 서비스가 유레카 서비스에 등록되기 때문에 주소 서비스가있는 코드가 작동합니다. RestTemplate은 Eureka에 대한 주소 서비스를 검색하여 적절한 IP 주소로 확인합니다.
	 */
	public Map getEmpInfo(String emp_no){
		ResponseEntity<Map> restExchange = restTemplate.exchange(
				//"http://concept/emp/{emp_no}", //concept은 서비스 아이디가 아니라 docker-compose.yml에서 설정한 서버의 명칭이다 <중요!>
				"http://bnksvcgateway/bnk/mc/emp/{emp_no}",
				//localhost:5555
				HttpMethod.GET, 
				null,
				Map.class,
				emp_no);
		return restExchange.getBody();
	} 
	
	//8장 레디스
	
	//레디스 캐쉬 데이터 확인
	private Map<String, Object> checkRedisCache(String emp_no){
		try {
			return conRedisRepo.findeConcept(emp_no);
		}
		catch (Exception e) {
			logger.error("\n★래디스 캐쉬를 체크 하다 에러 발생"
					+ "\nemp_no : {} \n에러메세지 : {}", emp_no, e);
			return null;
		}
	}
	
	//캐쉬 데이터 구성
	private void cacheConceptObject(Map<String, Object> map) {
		try {
			conRedisRepo.saveConcept(map);
		}
		catch(Exception e) {
			logger.error("\n★래디스 캐쉬를 저장 하다 에러 발생"
					+ "\nemp_no : {} \n에러메세지 : {}", map.get("emp_no"), e);
		}
	}
	
	//레디스 캐쉬 정보 확인
	public Map<String, Object> getConcept(String emp_no){
		
		logger.info("Harang 서비스 Concept 데이터 가져오기 : {}", UserContext.getCorrelationId());
		
		Map<String, Object> concept = checkRedisCache(emp_no);
		
		//logger.info(concept.toString());
		
		if(concept != null) {
			//레디스 데이터가 없다면, 원본 데이터에서 데이터를 조회하기 위해 조직 서비스를 호출한다.
			logger.info("\n★ 캐쉬 서버에서 정상적으로 데이터 조회! \n직원번호 : {} \n조회데이터 : {}", emp_no, concept);
			return concept;
		}
		
		logger.info("해당 직원번호의 레디스 캐쉬 데이터가 없음 (서비스에서 조회 합니다): {}.", emp_no);
		
        ResponseEntity<Map> restExchange =
                restTemplate.exchange(
                        "http://bnksvcgateway/bnk/mc/emp/{emp_no}",
                        HttpMethod.GET,
                        null, Map.class, emp_no);
        
        //캐시에 레코드 저장
        concept = restExchange.getBody();

        if (concept!=null) {
        	cacheConceptObject(concept);
        }
        
        return concept;
 
	}
	
}
