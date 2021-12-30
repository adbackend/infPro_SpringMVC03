package kr.inf.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.inf.model.BoardVO;
import kr.inf.service.BoardService;

//servlet-context.xml	<context:component-scan base-package="kr.inf.web" />
@Controller
public class BoardController {

	@Autowired
	private BoardService service;
	
	@RequestMapping("/list.do")
	public String List(Model model) {
		
		java.util.List<BoardVO> list= service.getList();
		model.addAttribute("list",list);
		
		return "boardList"; //boardList.jsp
	}
	
	@RequestMapping(value="/register.do", method=RequestMethod.GET)
	public String registerGET() {
		
		return "register"; //register.jsp(게시물 등록 화면)
	}
	
	//게시물 등록처리 
	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String registerPOST(BoardVO board) { 
		
		service.register(board); //게시물 등록
		
		return "redirect:/list.do";
	}
	
	@RequestMapping(value="/get.do", method=RequestMethod.GET)
	public String get(@RequestParam("bno") int bno, Model model) {
		
		BoardVO board = service.get(bno, "get");
		
		
		model.addAttribute("board", board);
		
		return "get"; // get.jsp
	}
	
	@RequestMapping(value="/modify.do", method=RequestMethod.GET)
	public String modifyGET(@RequestParam("bno") int bno, Model model) {
		
		BoardVO board = service.get(bno, "modify");
		model.addAttribute("board",board);
		
		return "modify"; 
	}

	@RequestMapping(value="/modify.do", method=RequestMethod.POST)
		public String modifyPOST(BoardVO board) {
		
		service.modify(board);
		return "redirect:/list.do"; 
	}
	
	@RequestMapping("/remove")
	public String remove(@RequestParam("bno") int bno) {
		
		service.remove(bno);
		
		return "redirect:/list.do";
	}
	
}
