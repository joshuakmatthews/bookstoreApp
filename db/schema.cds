namespace BookstoreApp;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity book
{
    key ID : UUID
        @Core.Computed;
    title : String(80) not null;
    datePublished : Date;
    genre : String(20);
    to_publisher : Association to one publisher;
    to_author : Association to one author;
    to_series : Association to many series on to_series.book = $self;
    to_pricing : Association to many pricing on to_pricing.book = $self;
    to_retailers : Association to many retailers on to_retailers.book = $self;
}

entity publisher
{
    key publisherID : String;
    yearFounded : Date;
    countryOrigin : String(40);
}

entity author
{
    key penName : String(80);
    firstName : String(20);
    middleName : String(20);
    lastName : String(20);
    dob : Date;
    nationality : String(30);
}

entity series
{
    key seriesID : String(80);
    key title : String;
    book : Association to one book;
}

entity pricing
{
    key ID : UUID
        @Core.Computed;
    price : Decimal;
    currency : Currency;
    book : Association to one book;
}

entity retailers
{
    key retailerID : String;
    name : String(100);
    book : Association to one book;
}
