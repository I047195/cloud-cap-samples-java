using { CatalogService, my.bookshop.Books }
from '../../app/browse/fiori-service';

// Add new field `isbn` to Books
extend Books with {
  isbn : String @title:'ISBN';
}

// Display that new field in list on Fiori UI
annotate CatalogService.Books with @(
  UI.LineItem: [... , {Value:isbn},{Value:rating,Label:'Rating Label'}]
);
