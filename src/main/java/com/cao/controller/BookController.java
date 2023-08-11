package com.cao.controller;

import com.cao.pojo.Books;
import com.cao.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    //Controller层调用service层
    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    //向前端传递全部书籍并且返回到书籍展示页面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBooks();

        model.addAttribute("list",list);
        return "allBook";
    }

    //跳转到增加书籍页面
    @RequestMapping("/toAddBook")
    public String toAddBook(){
        return "addBook";
    }

    //添加书籍的请求
    @RequestMapping("/addBook")
    public String addBook(Books book){
        bookService.addBook(book);
        return "redirect:/book/allBook";//重定向到allBook页面
    }

    //接收前端数据查到对应书籍信息再传递给前端,最后跳转到修改书籍页面,
    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(int id,Model model){
        Books book = bookService.queryBookByID(id);
        model.addAttribute("QBook",book);
        return "updateBook";
    }

    //实际修改的请求
    @RequestMapping("/updateBook")
    public String updateBook(Books book){
        //!!需要前端隐藏域中提交id
        bookService.updateBook(book);
        return "redirect:/book/allBook";
    }

    //删除书籍请求(不同写法，和上面等价)
    @RequestMapping("/deleteBook{bookID}")
    public String deleteBook(@PathVariable("bookID") int id){

        bookService.deleteBookByID(id);
        return "redirect:/book/allBook";
    }

    //查询书籍请求
    @RequestMapping("/queryBook")
    public String queryBook(String QBookName,Model model){
        List<Books> QBookList = bookService.queryBookByName(QBookName);
        model.addAttribute("QBookList",QBookList);
        if(QBookList.size()!=0){
            return "BeQueriedBook";
        }else {
            return "Error";
        }
    }

}
