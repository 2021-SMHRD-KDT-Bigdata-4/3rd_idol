package kr.pcolor.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.pcolor.domain.BoardVO;
import kr.pcolor.domain.UserVO;

@Mapper
public interface UserMapper {   
   @Select("select * from tbl_user where user_id = #{user_id}")
   public UserVO userList(String user_id);
   
   @Select("select * from tbl_user where user_id= #{user_id} and user_password= #{user_password}")
   public UserVO loginUser(UserVO vo);
   
//   @Select("select count(*) from tbl_user where user_id = #{user_id}")
//   public int checkUser(String user_id);
    
    @Insert("insert into tbl_user (user_id, user_password, user_name, user_age, user_gender) values (#{user_id}, #{user_password}, #{user_name}, #{user_age}, #{user_gender})")
    public void insertUser(UserVO vo);
    
//    @Select("select * from tbl_user where user_id = #{user_id}")
//    public UserVO mypage(String user_id);
    
    @Delete("delete from tbl_user where user_id = #{user_id}")
    public void userDelete(String user_id);
  
    @Update("update tbl_user set user_password = #{user_password}, user_name = #{user_name}, user_age = #{user_age}, user_gender = #{user_gender} where user_id = #{user_id}" )
    public void userUpdate(UserVO vo);
    
	@Select("select pc_idx from tbl_user where user_id = #{user_id}")
    public int goResult(String user_id);
}