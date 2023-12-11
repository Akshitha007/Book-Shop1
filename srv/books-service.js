const cds = require('@sap/cds')
module.exports = cds.service.impl(async function () {
    const { Books } = this.entities;
    this.after("READ", Books, (data) => {
        const Books = Array.isArray(data) ? data : [data];
        debugger
        Books.forEach((Book) => {
            if (Book.stock == 0) {
                Book.criticality = 1;
            }
            else if (Book.stock <= 15) {
                Book.criticality = 2;
            }
            else {
                Book.criticality = 3;
            }
        })
    })
})