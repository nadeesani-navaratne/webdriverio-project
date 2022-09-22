const MilionMorePage = require('../pageobjects/milion.more.page');

describe('Home page detail testing', () => {

    it('pagelogo - "Volvo" should be visible',  () => {
        browser.url('/intl/v/car-safety/a-million-more')
        browser.pause(5000)
       expect(MilionMorePage.sitelogo).toBeExisting()
       
    });

    it('pagelogo should be clickable',  () => {
        browser.url('/intl/v/car-safety/a-million-more')
        browser.pause(5000)
        MilionMorePage.sitelogo.click()
       
    });

    it('should be able to goto Homepage by clicking pagelogo',  async() => {
        browser.url('/intl/v/car-safety/a-million-more')
        browser.pause(5000)
        MilionMorePage.sitelogo.click()
        MilionMorePage.acceptallbutton.click()
        //await expect(browser).toHaveUrl(baseUrl +'/intl')
       
    });

    it('Navigation button -"Our cars" should be visible',  () => {
        browser.url('/intl/v/car-safety/a-million-more')
        browser.pause(5000)
       expect(MilionMorePage.ourcarsnavigationbutton).toBeExisting()
       MilionMorePage.ourcarsnavigationbutton.click()

       
    });

    it('Verify the main text of the million more page',  () => {
        browser.url('/intl/v/car-safety/a-million-more')
        browser.pause(5000)
       expect(MilionMorePage.textontop).toBeExisting()
       
    });


    









});

