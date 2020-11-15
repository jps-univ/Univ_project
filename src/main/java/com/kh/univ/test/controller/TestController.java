package com.kh.univ.test.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.univ.board.model.service.BoardService;
import com.kh.univ.board.model.vo.Board;
import com.kh.univ.test.model.service.TestService;
import com.kh.univ.test.model.vo.Test;

@Controller
public class TestController {
    @Autowired
    private TestService tService;
    
    @Autowired
    private BoardService bService;




    @RequestMapping("test1.do")
    public void selectList(HttpServletResponse response) throws JsonIOException, IOException {

        ArrayList<Test> list = tService.selectList();
        response.setContentType("application/json; charset=utf-8");
        System.out.println(list);
        Gson gson = new GsonBuilder().create();
        gson.toJson(list, response.getWriter());
    }

    @ResponseBody
    @RequestMapping(value = "test2.do", produces = "application/json; charset=utf-8")
    public String selectList2() throws JsonProcessingException {
        ArrayList<Test> list = tService.selectList();
        ObjectMapper mapper = new ObjectMapper();

        String jsonStr = mapper.writeValueAsString(list);
        System.out.println(jsonStr);
        return jsonStr;
    }

    @ResponseBody
    @RequestMapping("test3.do")
    public Object selectList3(HttpServletRequest request, HttpServletResponse response,
                              @ModelAttribute("testVO") Test testVO) {
        Map<String, Object> mp = new HashMap<String, Object>();
        mp.put("data", tService.selectList());

        Object result = mp;
        System.out.println(result);
        return result;
    }

    @RequestMapping(value = "test4.do")
    public @ResponseBody
    Object getRecordList(HttpServletRequest request,
                         HttpServletResponse response,
                         @ModelAttribute("testVO") Test testVO) {

        Map<String, Object> mp = new HashMap<String, Object>();
        mp.put("data", tService.selectList());

        Object result = mp;
        System.out.println(result);
        return result;
    }
    

    @RequestMapping("goMain.do")
    public String goMain() {
    	
//    	ArrayList<Board> nList = bService.nList();
//    	System.out.println("nList : " + nList);
//    	ModelAndView mv = new ModelAndView();
//    	mv.setViewName("common/main");
//    	mv.addObject("nList",nList);
//        return mv;
        return "common/main";
    }

    @RequestMapping("login.do")
    public String login() {
    	
//    	ArrayList<Board> nList = bService.nList();
//    	System.out.println("nList : " + nList);
//    	ModelAndView mv = new ModelAndView();
//    	mv.setViewName("common/main");
//    	mv.addObject("nList",nList);
//        return mv;
        return "common/main";
    }

    @RequestMapping("loginProfessor.do")
    public String  loginProfessor() {
        return "common/main_professor";
    }
    @RequestMapping("goMainProfessor.do")
    public String goMainProfessor() {
        return "common/main_professor";
    }
    
    @RequestMapping("noticeDetail.do")
    public ModelAndView nDetail(ModelAndView model, Board board) {
    	Board BoardDetail = bService.findById(board);
    	model.addObject("board",BoardDetail);
    	model.setViewName("notice_detail/noticeDetail");
    	
        return model;
    }
}
