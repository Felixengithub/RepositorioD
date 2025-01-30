public class Main {
    public static void main(String[] args) {
        Book book1 = new Book("Clean Code", "Robert C. Martin", 2008, 5);
        Book book2 = new Book("Effective Java", "Joshua Bloch", 2018, 3);

        Library library = new Library();

        library.addBook(book1);
        library.addBook(book2);

        try {
            Book foundBook = library.findBookByTitle("Clean Code");
            System.out.println("Libro encontrado: " + foundBook.getTitle());
        } catch (BookNotFoundException e) {
            System.out.println(e.getMessage());
        }

        System.out.println("Total de libros disponibles: " + library.getTotalBooks());
    }
}
