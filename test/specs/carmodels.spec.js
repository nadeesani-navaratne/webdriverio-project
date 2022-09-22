const MilionMorePage = require('../pageobjects/milion.more.page');

describe('Carmodels page detail verification', () => {

    it('Verification of the carmodles page tiltle',  () => {
        browser.url('/intl/v/car-safety/a-million-more')
        browser.pause(5000)
       expect(MilionMorePage.carmodelstitle).toBeExisting()
       
    });

})