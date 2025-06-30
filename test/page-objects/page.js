import { browser, $ } from '@wdio/globals'

class Page {
  get pageHeading() {
    return $('h1')
  }

  navItem(navItemName) {
    return $(`[data-testid="nav-${navItemName}"]`).parentElement()
  }

  async navIsActive(itemName) {
    const navItem = await this.navItem(itemName)
    const className = await navItem.getAttribute('class')

    return className.includes('govuk-service-navigation__item--active')
  }

  open(path) {
    return browser.url(path)
  }
}

export { Page }
