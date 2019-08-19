package com.tyn.bnk;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.cloud.stream.annotation.EnableBinding;
import org.springframework.cloud.stream.annotation.StreamListener;
import org.springframework.cloud.stream.messaging.Sink;
import org.springframework.context.annotation.Bean;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.web.client.RestTemplate;

import com.tyn.bnk.utils.UserContextInterceptor;

//2장+기본 스프링 부트 실행시 applicaton runner
@SpringBootApplication
//4장+유레카 서버, Feign, Discovery client
@EnableEurekaClient
@EnableFeignClients
@EnableDiscoveryClient
//5장+서킷브레이커 실행
@EnableCircuitBreaker
//8장+들어오는 메시지를 수신할 수 있게 Sing인터페이스에 정의된 채널을 사용하도록 서비스에 지시한다.
@EnableBinding(Sink.class)
public class MsgHarangApplication {
	
	private final static Logger logger = LoggerFactory.getLogger(MsgHarangApplication.class);
	
	@Bean
	@LoadBalanced//리본 사용
	public RestTemplate getRestTemplate() {
	//UserContextInterceptor 활성화	
        RestTemplate template = new RestTemplate();
        List<ClientHttpRequestInterceptor> interceptors = template.getInterceptors();
        if (interceptors==null){
        	//UserContextInterceptor를 생성된 RestTemplate인스턴스에 추가한다.
            template.setInterceptors(Collections.singletonList(new UserContextInterceptor()));
        }
        else{
            interceptors.add(new UserContextInterceptor());
            template.setInterceptors(interceptors);
        }
        return template;
	}
	
	
	//8장+
	@StreamListener(Sink.INPUT)
	public void loggerSink(Map<String, Object> msg) {
		logger.info("@HarangApp_전송받은메세지"
				  + "\n@EMP_NO : "+msg.get("EMP_NO")
				  + "\n@Action : "+msg.get("action"));
	}
	
	public static void main(String[] args) {
		SpringApplication.run(MsgHarangApplication.class, args);
	}

}
