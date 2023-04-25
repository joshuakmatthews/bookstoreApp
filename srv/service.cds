using { BookstoreApp as my } from '../db/schema';

using BookstoreApp from '../db/schema';

@path : 'service/BookstoreApp'
service BookstoreAppService
{
    entity book as
        projection on my.book;

    entity publisher as
        projection on my.publisher;

    entity author as
        projection on my.author;

    entity series as
        projection on my.series;

    entity pricing as
        projection on my.pricing;

    entity retailers as
        projection on my.retailers;
}

annotate BookstoreAppService with @requires :
[
    'authenticated-user'
];
