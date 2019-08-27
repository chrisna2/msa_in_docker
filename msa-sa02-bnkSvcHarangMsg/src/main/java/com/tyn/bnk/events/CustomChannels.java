package com.tyn.bnk.events;

import org.springframework.cloud.stream.annotation.Input;
import org.springframework.messaging.SubscribableChannel;

public interface CustomChannels {

	@Input("conceptchannel")
	SubscribableChannel concept();
	
	//연결되는 채널이 늘어 날때마다 여기에 해당하는 메서드 입력 줄줄이...
	
}
