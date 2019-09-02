package com.tyn.bnk.filters;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;

import brave.Tracer;

@Component
public class ResponseFilter extends ZuulFilter{

	private static final Logger logger = LoggerFactory.getLogger(ResponseFilter.class);
	private static final int FILTER_ORDER = 2; // 요청을 보내야 하는 순서
	private static final boolean SHOULD_FILTER = true;
	
	@Autowired
	Tracer tracer;
	
	@Autowired
	FilterUtils filterUtils;
	
	
	@Override
	public boolean shouldFilter() {
		return SHOULD_FILTER;
	}

	@Override
	public int filterOrder() {
		return FILTER_ORDER;
	}

	@Override
	public String filterType() {
		return FilterUtils.POST_FILTER_TYPE;
	}
	
	@Override
	public Object run() throws ZuulException {
		
		RequestContext ctx = RequestContext.getCurrentContext();
		ctx.getResponse().addHeader("tmx-correlation-id", tracer.currentSpan().context().traceIdString());
		
		return null;
	}



}
