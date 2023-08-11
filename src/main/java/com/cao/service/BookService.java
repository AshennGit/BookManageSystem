package com.cao.service;

import com.cao.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {
    int addBook(Books books);
    //删除一本书
    int deleteBookByID(int id);
    //更新一本书
    int updateBook(Books books);
    //根据id查询
    Books queryBookByID(int id);
    //根据名字查询
    List<Books> queryBookByName(String name);
    //查询全部的书
    List<Books> queryAllBooks();
}
