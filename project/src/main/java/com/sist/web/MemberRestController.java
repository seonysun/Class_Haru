package com.sist.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.dao.MemberDAO;
import com.sist.vo.MemberVO;

@RestController
public class MemberRestController {
	@Autowired
	BCryptPasswordEncoder encoder;
	
	@Autowired
	private MemberDAO dao;
	
	@GetMapping(value="member/login_vue.do", produces = "text/html;charset=UTF-8")
	public String member_login(String id,String pwd,HttpSession session)
	{
		String res="";
		MemberVO vo=dao.memberLogin(id, pwd);
		res=vo.getMsg(); //noid, ok, nopwd 넘어감
		if(res.equals("OK"))
		{
			//id,pwd,tel,name,nickname,intro,image,tutor,admin,msg
			session.setAttribute("mvo", vo);

		}
		return res;
	}
	
	@GetMapping("member/insert_vue.do")
	public String member_insert(MemberVO vo) {
		String res="no";
		try {
			res="yes";
			String pwd=encoder.encode(vo.getPwd());
			vo.setPwd(pwd);
//			dao.memberInsert(vo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
}
