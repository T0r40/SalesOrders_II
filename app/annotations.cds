using SalesOrdersService as service from '../srv/sales-orders-service.cds';

annotate service.SalesOrders with @(
  UI.HeaderInfo : {
    TypeName       : 'Sales Order',
    TypeNamePlural : 'Sales Orders',
    Title          : { Value : ID },
    Description    : { Value : email }
  },

  UI.SelectionFields : [
    ID,
    email,
    country,
    orderStatus
  ],

  UI.LineItem : [
    { Value : ID, Label : 'Sales Order ID' },
    { Value : email, Label : 'Email' },
    { Value : firstName, Label : 'First Name' },
    { Value : lastName, Label : 'Last Name' },
    { Value : country, Label : 'Country' },
    { Value : createOn, Label : 'Created On' },
    { Value : deliveryDate, Label : 'Delivery Date' },
    { Value : orderStatus, Label : 'Status' }
  ],

  UI.Facets : [
    {
      $Type  : 'UI.ReferenceFacet',
      Label  : 'General Information',
      Target : '@UI.FieldGroup#General'
    },
    {
      $Type  : 'UI.ReferenceFacet',
      Label  : 'Items',
      Target : 'items/@UI.LineItem'
    }
  ],

  UI.FieldGroup #General : {
    Data : [
      { Value : ID, Label : 'Sales Order ID' },
      { Value : email, Label : 'Email' },
      { Value : firstName, Label : 'First Name' },
      { Value : lastName, Label : 'Last Name' },
      { Value : country, Label : 'Country' },
      { Value : createOn, Label : 'Created On' },
      { Value : deliveryDate, Label : 'Delivery Date' },
      { Value : orderStatus, Label : 'Status' },
      { Value : imageURL, Label : 'Image URL' }
    ]
  }
);

annotate service.SalesOrderItems with @(
  UI.LineItem : [
    { Value : ID, Label : 'Item ID' },
    { Value : name, Label : 'Name' },
    { Value : description, Label : 'Description' },
    { Value : releaseDate, Label : 'Release Date' },
    { Value : discontinuedDate, Label : 'Discontinued Date' },
    { Value : price, Label : 'Price' },
    { Value : height, Label : 'Height' },
    { Value : width, Label : 'Width' },
    { Value : depth, Label : 'Depth' },
    { Value : quantity, Label : 'Quantity' },
    { Value : unitOfMeasure, Label : 'Unit of Measure' }
  ],

  UI.FieldGroup #General : {
    Data : [
      { Value : ID, Label : 'Item ID' },
      { Value : name, Label : 'Name' },
      { Value : description, Label : 'Description' },
      { Value : releaseDate, Label : 'Release Date' },
      { Value : discontinuedDate, Label : 'Discontinued Date' },
      { Value : price, Label : 'Price' },
      { Value : height, Label : 'Height' },
      { Value : width, Label : 'Width' },
      { Value : depth, Label : 'Depth' },
      { Value : quantity, Label : 'Quantity' },
      { Value : unitOfMeasure, Label : 'Unit of Measure' }
    ]
  }
);