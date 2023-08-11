import com.cao.pojo.Books;
import com.cao.service.BookService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
    @org.junit.Test
    public void test(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookServiceImpl = (BookService) context.getBean("bookServiceImpl");
        for (Books books:bookServiceImpl.queryAllBooks()){
            System.out.println(books);
        }
    }
}
