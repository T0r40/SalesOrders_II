namespace logali.salesorders;

entity SalesOrders {
  key ID           : UUID;
      email        : String(30) not null;
      firstName    : String(30);
      lastName     : String;
      country      : String(30);
      createOn     : Date;
      deliveryDate : DateTime;
      orderStatus  : Integer;
      imageURL     : String;

      items         : Composition of many SalesOrderItems
                        on items.salesOrder = $self;
}

entity SalesOrderItems {
  key ID               : UUID;
      salesOrder       : Association to SalesOrders not null;
      name             : String(40);
      description      : String(40);
      releaseDate      : Date;
      discontinuedDate : Date;
      price            : Decimal(12,2);
      height           : Decimal(15,3);
      width            : Decimal(13,3);
      depth            : Decimal(12,2);
      quantity         : Decimal(16,2);
      unitOfMeasure    : String(3);
}