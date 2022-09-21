class MilionMorePage{
     /**
     * define selectors using getter methods
     */
      get sitelogo () {
        return $('//*[@id="site-nav-topbar-wrapper"]//a');
    }

    get acceptallbutton () {
      return $('#onetrust-accept-btn-handler');
  }

  get ourcarsnavigationbutton () {
    return $(' //*[@id="nav:topNavCarMenu"]');
}

get ourcarsnavigationbutton () {
  return $('#sitenav-sidenav-toggle');
}









}
module.exports = new MilionMorePage();