using BooksService as service from '../../srv/books-service';

annotate service.Books with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Value : stock,
            Criticality : criticality,
        },
        {
            $Type : 'UI.DataField',
            Value : price,
        },
        {
            $Type : 'UI.DataField',
            Value : currency_code,
        },
    ]
);
annotate service.Books with {
    authors @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Authors',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : authors_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Name',
            },
        ],
    }
};
annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : currency_code,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Book overview',
            ID : 'booktitle',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Book Details',
                    ID : 'bookdetails',
                    Target : '@UI.FieldGroup#bookdetails',
                },],
        },
    ]
);
annotate service.Books with @(
    UI.FieldGroup #bookdetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
            },{
                $Type : 'UI.DataField',
                Value : descr,
            },{
                $Type : 'UI.DataField',
                Value : stock,
            },{
                $Type : 'UI.DataField',
                Value : price,
            },{
                $Type : 'UI.DataField',
                Value : currency_code,
            },],
    }
);
annotate service.Books with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Book title',
            ID : 'Booktitle',
            Target : '@UI.FieldGroup#Booktitle',
        },
    ],
    UI.FieldGroup #Booktitle : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : descr,
            },{
                $Type : 'UI.DataField',
                Value : price,
            },],
    }
);
annotate service.Books with @(
    UI.HeaderInfo : {
        TypeName : 'Book Details',
        TypeNamePlural : '',
    }
);
