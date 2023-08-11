package com.cao.dao;

import com.cao.pojo.Books;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
public interface BookMapper {
    //增加一本书
    int addBook(Books books);
    //删除一本书
    int deleteBookByID(@Param("bookID") int id);
    //更新一本书
    int updateBook(Books books);
    //根据ID查询
    Books queryBookByID(@Param("bookID") int id);
    //根据书名查询
    List<Books> queryBookByName(@Param("bookName") String name);
    //查询全部的书
    List<Books> queryAllBooks();
}


