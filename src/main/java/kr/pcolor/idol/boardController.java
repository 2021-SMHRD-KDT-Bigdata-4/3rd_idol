package kr.pcolor.idol;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.pcolor.domain.BoardVO;
import kr.pcolor.domain.ReplyVO;
import kr.pcolor.domain.SearchVO;
import kr.pcolor.mapper.BoardMapper;

@Controller
public class boardController {
   @Inject
   private BoardMapper boardMapper; 

   @RequestMapping("/boardList.do")
   public void boardList(Model model) {
      List<BoardVO> list = boardMapper.boardList();
      model.addAttribute("list", list);
      //return "boardList"; // -->ViewResolver--->/WEB-INF/views/boardList.jsp
   }
   @RequestMapping("/boardForm.do")
   public void boardForm() {
      
   }
   
   @RequestMapping("/boardInsert.do")
   public String boardInsert(BoardVO vo) {
      boardMapper.boardInsert(vo);
      return "redirect:/boardList.do";
   }
   
   @RequestMapping("/boardContent.do")
   public String boardContent(int board_idx, Model model) {      
         BoardVO vo =boardMapper.boardContent(board_idx);         
         List<ReplyVO> list = boardMapper.replyList(board_idx); 
         boardMapper.updatecnt(board_idx);
         model.addAttribute("vo", vo);
         model.addAttribute("list", list);         
         return "boardContent";
   }
   
   @RequestMapping("/boardDelete.do")
      public String boardDelete(int board_idx) {
      boardMapper.boardDelete(board_idx); 
      boardMapper.boardreplyDelete(board_idx);
      return "redirect:/boardList.do";
   }   
   @RequestMapping("/boardUpdate.do")
   public String boardUpdate(BoardVO vo) {
      boardMapper.boardUpdate(vo);
      return "redirect:/boardList.do";
   }
   @RequestMapping("/boardSearch.do")
   public String boardSearch(SearchVO vo,  Model model) {
      List <BoardVO> list = boardMapper.boardSearch(vo);
      model.addAttribute("list", list);
      return "boardList";
   }   
   
// 게시글 자세히보기
//	@RequestMapping("/updatereplycnt")
//	public String updatereplycnt(@RequestParam("board_idx") int board_idx) throws Exception {		
//		boardMapper.updatereplycnt(board_idx);		
//		return "boardList";
//	}
   
   @RequestMapping("/replyInsert.do")
   public String replyInsert(ReplyVO vo, int board_idx) {
	   boardMapper.replyInsert(vo);
	   //ModelAndView mav = new ModelAndView();
	   //List<ReplyVO> cList = boardMapper.replyList(board_idx);
	   //BoardVO bList = boardMapper.boardContent(board_idx);
	   // mav.setViewName("boardContent");
	   // mav.addObject("list", cList);
	   //mav.addObject("vo", bList);
	   //System.out.println("mav입니다 -> "+mav);
      
	   return "redirect:/boardContent.do?board_idx="+board_idx;
   }
  
   
   
   @RequestMapping("/replyDelete.do")
      public void replyDelete(int reply_idx) {
      boardMapper.replyDelete(reply_idx);            
   }
      
}