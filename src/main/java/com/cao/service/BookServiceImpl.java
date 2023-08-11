package com.cao.service;

import com.cao.dao.BookMapper;
import com.cao.pojo.Books;
import org.springframework.stereotype.Service;

import java.util.List;
public class BookServiceImpl implements BookService{
    //业务层调用dao层

    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    @Override
    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    @Override
    public int deleteBookByID(int id) {
        return bookMapper.deleteBookByID(id);
    }

    @Override
    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    @Override
    public Books queryBookByID(int id) {
        return bookMapper.queryBookByID(id);
    }

    @Override
    public List<Books> queryBookByName(String name) {
        return bookMapper.queryBookByName(name);
    }


    @Override
    public List<Books> queryAllBooks() {
        return bookMapper.queryAllBooks();
    }


}
