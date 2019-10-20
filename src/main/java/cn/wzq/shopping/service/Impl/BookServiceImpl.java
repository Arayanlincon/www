package cn.wzq.shopping.service.Impl;

import cn.wzq.shopping.bean.Book;
import cn.wzq.shopping.bean.Msg;
import cn.wzq.shopping.dao.BookMapper;
import cn.wzq.shopping.service.BookService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.security.Key;
import java.util.HashMap;
import java.util.List;

/**
 * Created by 吴志琪 on 2018/5/17 19:59
 *
 * @Description:
 */
@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookMapper bookMapper;

    @Override
    public Msg getBookByPrimary(long bid) {
        Book book = bookMapper.selectByPrimaryKey(bid);
        return Msg.success().add("book", book);
    }

    @Override
    public Book getBook(long id) {
        Book book = bookMapper.selectByPrimaryKey(id);
        return book;

    }

    @Override
    public List<Book> getAllBookByPriceDESC() {
        return bookMapper.getAllBookByPriceDESC();
    }

    @Override
    public List<Book> getAllBookByPriceASC() {
        return bookMapper.getAllBookByPriceASC();
    }

    @Override
    public List<Book> getAllBook() {
        return bookMapper.getAllBook();
    }

    @Override
    public List<Book> getAllBookByType(Integer typeId) {
        return bookMapper.getAllBookByType(typeId);
    }

    @Override
    public List<Book> getAllBookByName(String bookName) {
        return bookMapper.getAllBookByName(bookName);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public Msg deleteBook(Long bookId) {//原子操作，两表的bookid一起删除
        bookMapper.deleteBook_Category(bookId);
        bookMapper.deleteBookByPrimary(bookId);
        return Msg.success();
    }

    @Override
    public void updateBook(Book book) {
        bookMapper.updateBook(book);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public void saveBook(Book book, long cId) {//原子操作
        bookMapper.saveBook(book);
        HashMap<String, Long> map = new HashMap<>();
        map.put("bId", book.getbId());
        map.put("cId", cId);
        bookMapper.saveBookCategory(map);
    }

    @Override
    public List<Book> selectBookBySale() {
        return bookMapper.selectBookBySale();
    }
}
