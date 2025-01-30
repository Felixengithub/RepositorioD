import java.util.ArrayList;
import java.util.List;

public class Library {
    private List<Book> books;

    public Library() {
        books = new ArrayList<>();
    }

    public void addBook(Book book) {
        books.add(book);
    }

    public Book findBookByTitle(String title) throws BookNotFoundException {
        for (Book book : books) {
            if (book.getTitle().equalsIgnoreCase(title)) {
                return book;
            }
        }
        throw new BookNotFoundException("El libro con título \"" + title + "\" no se encontró.");
    }

    public int getTotalBooks() {
        int total = 0;
        for (Book book : books) {
            total += book.getCopiesAvailable();
        }
        return total;
    }
}
