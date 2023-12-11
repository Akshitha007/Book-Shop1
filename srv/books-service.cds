using {books as bs} from '../db/schema';

@path: '/srv/books'

service BooksService {
    entity Books  as projection on bs.Books;
    entity Authors as projection on bs.Authors;
}