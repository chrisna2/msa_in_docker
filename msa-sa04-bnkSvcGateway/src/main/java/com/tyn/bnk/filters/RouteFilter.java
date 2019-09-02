package com.tyn.bnk.filters;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.netflix.zuul.ZuulFilter;

@Component
public class RouteFilter extends ZuulFilter {
//동적 경로 필터 라우팅 설정 필터
    private static final int FILTER_ORDER =  1;
    private static final boolean SHOULD_FILTER =true;
    
    private static final Logger logger = LoggerFactory.getLogger(RouteFilter.class);
    
    @Autowired
    FilterUtils filterUtils;

    /*
	@Autowired
	ConceptFeignClient conceptFeignClient;
	
	@Autowired
	HarangFeignClient harangFeignClient;
    */
    
    @Override
    public String filterType() {
        return FilterUtils.ROUTE_FILTER_TYPE;//"route" : 경로 필터 클래스임을 나타내는 키워드
    }

    @Override
    public int filterOrder() {
        return FILTER_ORDER;
    }

    @Override
    public boolean shouldFilter() {
        return SHOULD_FILTER;
    }

    @Override
    public Object run() {
    	//TODO:해당 유저의 권한에 따라 페이지 라우팅 변경 예정
        return null;
    }
    
    /*책에 있는 소스 그대로 하면 안되겠다는 생각이 든다 ㅠㅠ
	private ProxyRequestHelper helper = new ProxyRequestHelper();
    
    private void forwardToSpecialRoute(String route) {
        RequestContext context = RequestContext.getCurrentContext();
        HttpServletRequest request = context.getRequest();

        MultiValueMap<String, String> headers = this.helper
                .buildZuulRequestHeaders(request);
        MultiValueMap<String, String> params = this.helper
                .buildZuulRequestQueryParams(request);
        String verb = getVerb(request);
        InputStream requestEntity = getRequestBody(request);
        if (request.getContentLength() < 0) {
            context.setChunkedRequestBody();
        }

        this.helper.addIgnoredHeaders();
        CloseableHttpClient httpClient = null;
        HttpResponse response = null;

        try {
            httpClient  = HttpClients.createDefault();
            response = forward(httpClient, verb, route, request, headers,
                    params, requestEntity);
            setResponse(response);
        }
        catch (Exception ex ) {
            ex.printStackTrace();

        }
        finally{
            try {
                httpClient.close();
            }
            catch(IOException ex){}
        }
    }
    
    private String getVerb(HttpServletRequest request) {
        String sMethod = request.getMethod();
        return sMethod.toUpperCase();
    }
    
    private InputStream getRequestBody(HttpServletRequest request) {
        InputStream requestEntity = null;
        try {
            requestEntity = request.getInputStream();
        }
        catch (IOException ex) {
            // no requestBody is ok.
        }
        return requestEntity;
    }
    
    private HttpResponse forward(HttpClient httpclient, String verb, String uri,
            HttpServletRequest request, MultiValueMap<String, String> headers,
            MultiValueMap<String, String> params, InputStream requestEntity)throws Exception {
		Map<String, Object> info = this.helper.debug(verb, uri, headers, params,requestEntity);
		URL host = new URL( uri );
		HttpHost httpHost = getHttpHost(host);
		
		HttpRequest httpRequest;
		int contentLength = request.getContentLength();
		InputStreamEntity entity = new InputStreamEntity(requestEntity, contentLength,
														 request.getContentType() != null ? ContentType.create(request.getContentType()) : null);
		switch (verb.toUpperCase()) {
			case "POST":
				HttpPost httpPost = new HttpPost(uri);
				httpRequest = httpPost;
				httpPost.setEntity(entity);
			break;
			case "PUT":
				HttpPut httpPut = new HttpPut(uri);
				httpRequest = httpPut;
				httpPut.setEntity(entity);
			break;
			case "PATCH":
				HttpPatch httpPatch = new HttpPatch(uri );
				httpRequest = httpPatch;
				httpPatch.setEntity(entity);
			break;
			default:
				httpRequest = new BasicHttpRequest(verb, uri);
		
		}
		try {
			httpRequest.setHeaders(convertHeaders(headers));
			HttpResponse zuulResponse = forwardRequest(httpclient, httpHost, httpRequest);
		return zuulResponse;
		}
		finally {
		}
	}
    
    private HttpHost getHttpHost(URL host) {
        HttpHost httpHost = new HttpHost(host.getHost(), host.getPort(),
                host.getProtocol());
        return httpHost;
    }
    
    private Header[] convertHeaders(MultiValueMap<String, String> headers) {
        List<Header> list = new ArrayList<>();
        for (String name : headers.keySet()) {
            for (String value : headers.get(name)) {
                list.add(new BasicHeader(name, value));
            }
        }
        return list.toArray(new BasicHeader[0]);
    }
    
    private HttpResponse forwardRequest(HttpClient httpclient, HttpHost httpHost,
    								    HttpRequest httpRequest) throws IOException {
    	return httpclient.execute(httpHost, httpRequest);
    }
    
    private void setResponse(HttpResponse response) throws IOException {
        this.helper.setResponse(response.getStatusLine().getStatusCode(),
                response.getEntity() == null ? null : response.getEntity().getContent(),
                revertHeaders(response.getAllHeaders()));
    }
    
    private MultiValueMap<String, String> revertHeaders(Header[] headers) {
        MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
        for (Header header : headers) {
            String name = header.getName();
            if (!map.containsKey(name)) {
                map.put(name, new ArrayList<String>());
            }
            map.get(name).add(header.getValue());
        }
        return map;
    }
    */
}
