public class Book {
    private String title;
    private String author;
    private int year;
    private int copiesAvailable;

    public Book(String title, String author, int year, int copiesAvailable) {
        this.title = title;
        this.author = author;
        this.year = year;
        this.copiesAvailable = copiesAvailable;
    }

    public String getTitle() {
        return title;
    }

    public String getAuthor() {
        return author;
    }

    public int getYear() {
        return year;
    }

    public int getCopiesAvailable() {
        return copiesAvailable;
    }
}
