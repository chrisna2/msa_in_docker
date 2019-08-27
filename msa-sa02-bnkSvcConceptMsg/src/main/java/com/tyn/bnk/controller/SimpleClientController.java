package com.tyn.bnk.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.tyn.bnk.service.SimpleService;

@RestController
public class SimpleClientController {
	
	private final static Logger logger = LoggerFactory.getLogger(SimpleClientController.class);
	
	@Autowired
	SimpleService service;
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public ResponseEntity<Map<String,Object>> test(){
		
		ResponseEntity<Map<String,Object>> response = null;
		Map<String,Object> resMap = new HashMap<String,Object>();
		
		resMap.put("type","Second Eureka Client!");
		resMap.put("msg","Spring cloud is Hard :-<");
		
		response =new ResponseEntity<Map<String,Object>>(resMap, HttpStatus.OK);
		
		return response;
	}
	
	@RequestMapping(value = "/dataCheck", method = RequestMethod.GET)
	ResponseEntity<List<Map<String,Object>>> testData(){
		
		ResponseEntity<List<Map<String,Object>>> response = null;
		List<Map<String,Object>> resMap = new ArrayList<Map<String,Object>>();
		
		resMap = service.justSelect();
		
		response =new ResponseEntity<List<Map<String,Object>>>(resMap, HttpStatus.OK);
		
		return response;
	}
	
	
	@RequestMapping(value = "/emp/{emp_no}", method = RequestMethod.GET)
	ResponseEntity<Map<String,Object>> getEmpInfo(@PathVariable String emp_no){
		
		ResponseEntity<Map<String,Object>> response = null;
		
		Map<String,Object> resMap = new HashMap<String,Object>();
		
		resMap = service.getEmpInfo(emp_no);
		
		response =new ResponseEntity<Map<String,Object>>(resMap, HttpStatus.OK);
		
		return response;
	}
	@RequestMapping(value = "/emp/saveEmpInfo", method = RequestMethod.POST)
	ResponseEntity<Map<String,Object>> saveEmpInfo(@RequestBody Map<String, Object> map){
		
		ResponseEntity<Map<String,Object>> response = null;
		Map<String,Object> resMap = new HashMap<String,Object>();
		
		logger.info("@saveEmpInfo ->"+ map.toString());
		
		resMap = service.saveEmpInfo(map);
		response = new ResponseEntity<Map<String,Object>>(resMap, HttpStatus.OK);
		return response;
	}
	
	@RequestMapping(value = "/emp/updEmpInfo", method = RequestMethod.POST)
	ResponseEntity<Map<String,Object>> updEmpInfo(@RequestBody Map<String, Object> map){
		
		ResponseEntity<Map<String,Object>> response = null;
		Map<String,Object> resMap = new HashMap<String,Object>();
		
		logger.info("@updEmpInfo ->"+ map.toString());
		
		resMap = service.updEmpInfo(map);
		
		response = new ResponseEntity<Map<String,Object>>(resMap, HttpStatus.OK);
		return response;
	}
	
}
