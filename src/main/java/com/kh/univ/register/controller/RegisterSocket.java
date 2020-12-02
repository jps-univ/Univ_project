//package com.kh.univ.register.controller;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.socket.TextMessage;
//import org.springframework.web.socket.WebSocketSession;
//import org.springframework.web.socket.handler.TextWebSocketHandler;
//
//@RequestMapping("/echo")
//public class RegisterSocket extends TextWebSocketHandler{
//
//	//세션 리스트
//	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
//
//	private static Logger logger = LoggerFactory.getLogger(RegisterSocket.class);
//
//	@Override
//	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
//		sessionList.add(session);
//		System.out.println(session);
//		logger.info("{} 연결됨", session.getId()); 
//	}
//	//클라이언트가 웹소켓 서버로 메시지를 전송했을 때 실행
//	@Override
//	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
//		logger.info("{}로 부터 {} 받음", session.getId(), message.getPayload());
//		//모든 유저에게 메세지 출력
//		for(WebSocketSession sess : sessionList){
//			sess.sendMessage(new TextMessage(message.getPayload()));
//		}
//		System.out.println(message);
//	}
//}
