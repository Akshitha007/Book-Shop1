using {books as bs} from '../db/schema';

@path: '/srv/books'

service BooksService {
    entity Books  @(restrict: [
        {
            grant: [
                'READ',
                'UPDATE',
                'DELETE',
                'WRITE'
            ],
            to   : 'Admin'

        },
        {
            grant: ['READ'],
            to   : 'Viewer'
        }
    ]) as projection on bs.Books;
    annotate Books with @odata.draft.enabled;
    entity Authors  @(restrict: [
        {
            grant: [
                'READ',
                'UPDATE',
                'DELETE',
                'WRITE'
            ],
            to   : 'Admin'

        },
        {
            grant: ['READ'],
            to   : 'Viewer'
        }
    ]) 
    as projection on bs.Authors;
    annotate Authors with @odata.draft.enabled ;
    
}