namespace books;

using {
    Currency,
    managed,
    cuid
} from '@sap/cds/common';

entity Books : managed,cuid {
        @title: 'Title'
        title    : String;

        @title: 'Description'
        descr    : String;

        @title: 'Stock'
        stock    : Integer;

        @title: 'Price'
        price    : Decimal(5,2);

        @title: 'Currency'
        currency : Currency;
        
        authors : Association to one Authors;
}

entity Authors : managed {

    key ID : Integer;

    @title: 'Name'
    Name : String;

}
