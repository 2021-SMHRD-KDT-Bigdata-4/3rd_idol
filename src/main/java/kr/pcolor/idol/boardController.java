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
   // 게시판 글쓰기 페이지 이동
   @RequestMapping("/boardForm.do")
   public void boardForm() {
      
   }
   // 게시글 작성
   @RequestMapping("/boardInsert.do")
   public String boardInsert(BoardVO vo) {
      boardMapper.boardInsert(vo);
      return "redirect:/boardList.do";
   }
   // 게시판 상세보기 페이지 이동
   @RequestMapping("/boardContent.do")
   public String boardContent(int board_idx, Model model) {      
         BoardVO vo =boardMapper.boardContent(board_idx);         
         List<ReplyVO> list = boardMapper.replyList(board_idx); 
         boardMapper.updatecnt(board_idx);
         model.addAttribute("vo", vo);
         model.addAttribute("list", list);         
         return "boardContent";
   }
   // 게시판 삭제
   @RequestMapping("/boardDelete.do")
      public String boardDelete(int board_idx) {
      boardMapper.boardDelete(board_idx); 
      boardMapper.boardreplyDelete(board_idx);
      return "redirect:/boardList.do";
   }   
   // 게시글 수정
   @RequestMapping("/boardUpdate.do")
   public String boardUpdate(BoardVO vo) {
      boardMapper.boardUpdate(vo);
      return "redirect:/boardList.do";
   }
   // 게시글 검생
   @RequestMapping("/boardSearch.do")
   public String boardSearch(SearchVO vo,  Model model) {
      List <BoardVO> list = boardMapper.boardSearch(vo);
      model.addAttribute("list", list);
      return "boardList";
   }   
   // 댓글 등록
   @RequestMapping("/replyInsert.do")
   public String replyInsert(ReplyVO vo, int board_idx) {
	   boardMapper.replyInsert(vo);     
	   return "redirect:/boardContent.do?board_idx="+board_idx;
   }
  // 댓글 삭제  
   @RequestMapping("/replyDelete.do")
      public void replyDelete(int reply_idx) {
      boardMapper.replyDelete(reply_idx);            
   }
      
}