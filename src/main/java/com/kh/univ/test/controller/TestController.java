package com.kh.univ.test.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.univ.test.model.service.TestService;
import com.kh.univ.test.model.vo.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@Controller
public class TestController {
    @Autowired
    private TestService tService;


    @RequestMapping("enrollClassPage.do")
    public String enrollClassPage() {
        return "enrollClass/enrollClassPage";
    }


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
}
