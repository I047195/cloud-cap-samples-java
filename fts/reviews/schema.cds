using { CatalogService } from '../../app/browse/fiori-service';

// Display existing field `rating` in list on Fiori UI
annotate CatalogService.Books with @(
  UI.LineItem: [..., {Value:rating}]
);
