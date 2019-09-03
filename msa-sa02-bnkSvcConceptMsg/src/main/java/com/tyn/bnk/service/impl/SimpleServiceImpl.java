package com.tyn.bnk.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tyn.bnk.event.source.SimpleSourceBean;
import com.tyn.bnk.persistence.SimpleMapper;
import com.tyn.bnk.service.SimpleService;

import brave.Span;
import brave.Tracer;
import brave.Tracer.SpanInScope;

@Service
public class SimpleServiceImpl implements SimpleService {
	
	private final static Logger logger = LoggerFactory.getLogger(SimpleServiceImpl.class);

	@Autowired
	SimpleMapper mapper;
	
	@Autowired
	SimpleSourceBean simpleSourceBeam;
	
	//[9장 추가]
	@Autowired
	private Tracer tracer;
	private Span newSpan;
	
	
	@Override
	public List<Map<String,Object>> justSelect() {
		return mapper.justSelect();
	}
	
	@Override
	public Map<String,Object> getEmpInfo(String emp_no) {
		
		newSpan = tracer.nextSpan().name("getEmpInfo");
		
		try(SpanInScope ws = tracer.withSpanInScope(newSpan.start())){
			simpleSourceBeam.publishConceptChange("GET", emp_no);
			return mapper.getEmpInfo(emp_no);
		}
		finally {
			newSpan.tag("peer.service", "postgres");
			newSpan.annotate("cr");
			newSpan.finish();
		}
	}
	
	@Override
	public Map<String,Object> saveEmpInfo(Map<String,Object> map) {
		
		newSpan = tracer.nextSpan().name("saveEmpInfo");
		
		try(SpanInScope ws = tracer.withSpanInScope(newSpan.start())){
			mapper.saveEmpInfo(map);
			logger.info("@saveEmpInfo => "+map.toString());
			simpleSourceBeam.publishConceptChange("SAVE", (String)map.get("EMP_NO"));
			//조직 데이터를 변경 하는 메서드 모두 simpleSourceBeam.publishConceptChange()을 호출한다.
			return map;
		}
		finally {
			newSpan.tag("peer.service", "postgres");
			newSpan.annotate("cr");
			newSpan.finish();
		}
	}
	
	@Override
	public Map<String,Object> updEmpInfo(Map<String,Object> map) {
		
		newSpan = tracer.nextSpan().name("updEmpInfo");
		try(SpanInScope ws = tracer.withSpanInScope(newSpan.start())){
			mapper.updEmpInfo(map);
			logger.info("@updEmpInfo => "+map.toString());
			simpleSourceBeam.publishConceptChange("UPDATE", (String)map.get("EMP_NO"));
			return mapper.getEmpInfo((String)map.get("EMP_NO"));
		}
		finally {
			newSpan.tag("peer.service", "postgres");
			newSpan.annotate("cr");
			newSpan.finish();
		}
	}
	
	@Override
	public int delEmpInfo(String emp_no) {
		newSpan = tracer.nextSpan().name("delEmpInfo");
		try(SpanInScope ws = tracer.withSpanInScope(newSpan.start())){
			int result = mapper.delEmpInfo(emp_no);
			logger.info("@delEmpInfo => "+emp_no);
			simpleSourceBeam.publishConceptChange("DELETE", emp_no);
			//조직 데이터를 변경 하는 메서드 모두 simpleSourceBeam.publishConceptChange()을 호출한다.
			return result;
		}
		finally {
			newSpan.tag("peer.service", "postgres");
			newSpan.annotate("cr");
			newSpan.finish();
		}
	}

}
