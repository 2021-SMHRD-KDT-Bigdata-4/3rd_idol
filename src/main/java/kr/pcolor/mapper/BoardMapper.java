package kr.pcolor.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.pcolor.domain.BoardVO;
import kr.pcolor.domain.ReplyVO;
import kr.pcolor.domain.SearchVO;

@Mapper
public interface BoardMapper {
    @Select("select * from tbl_board")
   public List<BoardVO> boardList();
    
    @Insert("insert into tbl_board (board_title,board_contents,user_id) values(#{board_title},#{board_contents},#{user_id})")
    public void boardInsert(BoardVO vo);
    

    @Select("select * from tbl_board where board_idx = #{board_idx}")
    public BoardVO boardContent(int board_idx);
    
    @Delete("delete from tbl_board where board_idx=#{board_idx}")
    public void boardDelete(int board_idx);
  
    @Update("update tbl_board set board_title = #{board_title}, board_contents = #{board_contents} where board_idx = #{board_idx}")
    public void boardUpdate(BoardVO vo);
    
    @Select("select * from tbl_board where ${part} like concat('%',#{keyword},'%')")
    public List<BoardVO> boardSearch(SearchVO vo);
    
    @Update("update tbl_board set board_count = board_count + 1 where board_idx = #{board_idx}")
    public int updatecnt(int board_idx);
    
    @Select("select * from tbl_reply where board_idx=#{board_idx} ")
    public List<ReplyVO> replyList(int board_idx);
    
    @Insert("insert into tbl_reply (reply_text,user_id,board_idx) values(#{reply_text},#{user_id},#{board_idx})")
    public void replyInsert(ReplyVO vo);
    
    @Delete("delete from tbl_reply where reply_idx=#{reply_idx}")
    public void replyDelete(int reply_idx);
    
    @Delete("delete from tbl_reply where board_idx=#{board_idx}")
    public void boardreplyDelete(int board_idx);
    

}