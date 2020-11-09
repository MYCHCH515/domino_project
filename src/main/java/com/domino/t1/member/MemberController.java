package com.domino.t1.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService; 
	
	@PostMapping("memberJoin")
	public ModelAndView setMemberJoin(MemberDTO memberDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = memberService.setMemberJoin(memberDTO);
		mv.setViewName("redirect:../");
		return mv;
	}
	
	@GetMapping("memberJoin")
	public ModelAndView setMemberJoin() throws Exception{
		System.out.println("Member Join");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberJoin");
		return mv;
	}
	
	@GetMapping("memberList")
	public ModelAndView getMemberList(MemberDTO memberDTO) throws Exception{
		System.out.println("Member List");
		ModelAndView mv = new ModelAndView();
		
		List<MemberDTO> ar = memberService.getMemberList(memberDTO);
		
		mv.addObject("list", ar);
		mv.setViewName("member/memberList");
		
		return mv; 
	}

}
