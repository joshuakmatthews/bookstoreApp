using BookstoreAppService as service from '../../srv/service';

annotate service.book with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Date of Publication',
            Value : datePublished,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Genre',
            Value : genre,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Publisher',
            Value : to_publisher_publisherID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Author',
            Value : to_author_penName,
        },
    ]
);
annotate service.book with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Date of Publication',
                Value : datePublished,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Genre',
                Value : genre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Author',
                Value : to_author_penName,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'About the Book',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'About the Author',
            ID : 'AbouttheAuthor',
            Target : '@UI.FieldGroup#AbouttheAuthor',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Where to Find',
            ID : 'WheretoFind',
            Target : 'to_retailers/@UI.LineItem#WheretoFind',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Pricing',
            ID : 'Pricing',
            Target : 'to_pricing/@UI.LineItem#Pricing1',
        },
    ]
);
annotate service.book with @(
    UI.FieldGroup #AbouttheAuthor : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : to_author.dob,
                Label : 'Date of Birth',
            },{
                $Type : 'UI.DataField',
                Value : to_author.firstName,
                Label : 'First Name',
            },{
                $Type : 'UI.DataField',
                Value : to_author.lastName,
                Label : 'Last Name',
            },{
                $Type : 'UI.DataField',
                Value : to_author.middleName,
                Label : 'Middle Name',
            },{
                $Type : 'UI.DataField',
                Value : to_author.nationality,
                Label : 'Nationality',
            },{
                $Type : 'UI.DataField',
                Value : to_author.penName,
                Label : 'Pen Name',
            },],
    }
);
annotate service.book with @(
    UI.FieldGroup #Pricing : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : to_pricing.price,
                Label : 'price',
            },{
                $Type : 'UI.DataField',
                Value : to_pricing.currency_code,
            },],
    }
);
annotate service.book with @(
    UI.FieldGroup #Retailers : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : to_retailers.name,
                Label : 'name',
            },],
    }
);
annotate service.pricing with @(
    UI.LineItem #Pricing : [
        {
            $Type : 'UI.DataField',
            Value : currency_code,
        },{
            $Type : 'UI.DataField',
            Value : price,
            Label : 'MSRP',
        },]
);
annotate service.retailers with @(
    UI.LineItem #WheretoFind : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'Name',
        },]
);
annotate service.pricing with @(
    UI.LineItem #Pricing1 : [
        {
            $Type : 'UI.DataField',
            Value : currency_code,
        },{
            $Type : 'UI.DataField',
            Value : price,
            Label : 'MSRP',
        },]
);
