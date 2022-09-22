class MilionMorePage {
  /**
  * define selectors using getter methods
  */
  get sitelogo() {
    return $('//*[@id="site-nav-topbar-wrapper"]//a');
  }

  get acceptallbutton() {
    return $('#onetrust-accept-btn-handler');
  }

  get ourcarsnavigationbutton() {
    return $('//*[@id="nav:topNavCarMenu"]');
  }

  get ourcarsnavigationbutton() {
    return $('//*[@id="sitenav-sidenav-toggle"]');
  }

  get textontop() {
    return $('//div["data-component="ModelIntro"]/section/h2');
  }

  get textstatement() {
    return $('.TextStatement-1');
  }

  get safetyfeaturelist() {
    return $('iconCallouts:iconTextItem');
  }

  get learncarsaftylink() {
    return $('a[data-autoid="iconCallouts:cta"]');
  }

  get carmodelstitle() {
    return $('[data-autoid="productListCarousel:title"]');
  }








}
module.exports = new MilionMorePage();