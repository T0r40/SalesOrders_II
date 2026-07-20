using logali.salesorders as db from '../db/schema';

service SalesOrdersService {

  @odata.draft.enabled
  entity SalesOrders as projection on db.SalesOrders;

  entity SalesOrderItems as projection on db.SalesOrderItems;

}