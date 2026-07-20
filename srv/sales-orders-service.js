const cds = require('@sap/cds')

module.exports = cds.service.impl(async function () {

  const { SalesOrders, SalesOrderItems } = this.entities

  this.before(['CREATE', 'UPDATE'], SalesOrders, async req => {
    const data = req.data

    if (!data.ID) {
      req.error(400, 'Sales Order ID is mandatory')
    }

    if (!data.email) {
      req.error(400, 'Email is mandatory')
    }

    if (req.event === 'CREATE' && !data.createOn) {
      data.createOn = new Date().toISOString().slice(0, 10)
    }
  })

  this.before(['CREATE', 'UPDATE'], SalesOrderItems, async req => {
    const data = req.data

    if (!data.ID) {
      req.error(400, 'Item ID is mandatory')
    }

    if (data.price !== undefined && Number(data.price) < 0) {
      req.error(400, 'Price cannot be negative')
    }

    if (data.quantity !== undefined && Number(data.quantity) < 0) {
      req.error(400, 'Quantity cannot be negative')
    }
  })

  this.before('DELETE', SalesOrders, async req => {
    const { ID } = req.data

    if (!ID) {
      req.error(400, 'Sales Order ID is mandatory for deletion')
    }
  })

})